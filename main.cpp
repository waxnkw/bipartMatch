#include <iostream>
#include <fstream>
using namespace std;

/**
 * input and output path
 * please assign input and output path here
 * then you can run the code
 * run time would be show in the bash
 * */
ifstream fin("../data/part.in", ios_base::in);
ofstream fout("../part.out", ios_base::out);

streambuf *backup;

// edges
int edges[500][500];
int M[1000];
int pre[1000];
int color[1000];
const int WHITE = 0;
const int GREY = 1;
const int BLACK = 2;

/***************  my debug  functions *****************/
/**
 * show the edges
 * use to debug
 * @param k
 * */
void show_edges(int k){
    for(int i=0; i<k; i++){
        for(int j=0; j<k; j++){
            cout<< edges[i][j] <<" ";
        }
        cout<<endl;
    }
}

/**
 * check M
 * */
bool checkM(int k, int w){
    for(int i=0; i<k; i++){
        for (int j = 0; j < k; ++j) {
            if (edges[i][j]>w){ continue;}
            if (M[i]==-1 && M[j+k]==-1){ return false;}
        }
    }
    return true;
}

/**
 * output augment path
 * */
void out_augment(int t){
    int cur = t;
    // t 不饱和
    if(M[t]==-1){
        // a white a red a white a red a white a
        while(cur!=-1){
            int next = pre[cur];
            cout<< cur << "--w--"<<pre[cur];
            cout<< "--r--";
            cur = M[next];
        }
    }
    cout<<endl;
}
/*******************************/

/**
 * redirect input output
 * */
void init_redirect(){
    cin.rdbuf(fin.rdbuf());
    backup = cout.rdbuf();
    cout.rdbuf(fout.rdbuf());
}

/**
 * read one problem
 * */
int read_in_one_prob(int k){
    int tmp=0, max=0;
    for(int i=0; i<k; i++){
        for(int j=0; j<k; j++){
            cin >> tmp;
            max = max<tmp?tmp:max;
            edges[i][j] = tmp;
        }
    }
    return max;
}

/**
 * init matrix M
 * */
void init_M(int k){
    for(int i=0; i<2*k; i++){
        M[i] = -1;
    }
}

/**
 * get edge i-j
 * if edge does not exists or greater than w return -1
 * */
int get_edge(int i, int j, int k, int w){
    if (i>=k && j>=k){ return -1;}
    if (i<k && j<k){ return -1;}
    int l = min(i,j);
    int r = max(i,j)-k;
    return edges[l][r]<=w?edges[l][r]:-1;
}

/**
 * use dfs to make a match M
 * */
void dfs_init_M(int v, int k, int w){
    color[v] = GREY;
    int base = v>=k?0:k;
    for (int i = base; i < base+k; ++i) {
        // 没有边continue
        if (get_edge(v,i, k,w)==-1){ continue;}

        // make a match
        if (M[v]==-1&&M[i]==-1){
            M[v] = i;
            M[i] = v;
        }

        if (color[i]==WHITE){
            dfs_init_M(i,k,w);
        }
    }
    color[v] = BLACK;
}

/**
 * init color array
 * */
void init_color(int k){
    for (int i = 0; i < 2*k; ++i) {
        color[i] = WHITE;
    }
}

/**
 * find augment path
 * */
int augment_path(int s, int k, int w){
    color[s] = GREY;
    int base = s>=k?0:k;
    for (int v = base; v < base+k; ++v) {
        // 没有边continue
        if (get_edge(s,v, k,w)==-1 || color[v]!=WHITE || M[s]==v){ continue;}

        // make a match
        if (M[v]==-1){
            pre[v] = s;
            return v;
        } else{
            pre[v] = s;
            int m= M[v];
            pre[m] = v;
            color[v] = GREY;
            int t = augment_path(m, k, w);
            if(t>=0){ return t;}
        }
    }
    return -1;
}

/**
 * expand the augment path
 * */
void expand(int t){
    int cur = t;
    int next, next_next;
    while(cur != -1){
        next = pre[cur];
        next_next = M[next];

        M[next] = cur;
        M[cur] = next;

        cur = next_next;
    }
}

/**
 * judge that whether exists a max match under the condition w
 * */
bool is_match(int w, int k){
    init_color(k);
    init_M(k);
    dfs_init_M(0, k, w);
//    bool is_M= checkM(k, w);

    for (int i = 0; i < 2*k; ++i) {
        if (M[i]!=-1){
            continue;
        }

        init_color(k);
        int tail = augment_path(i, k, w);
//        out_augment(tail);
        if (tail != -1){
            expand(tail);
        }
//        else{
//            return false;
//        }
    }

    for (int i = 0; i < k; ++i) {
        if (M[i]==-1){ return false;}
    }

    return true;
}

/**
 * find the w of current input
 *
 * */
int find_w(int k, int max){
    int low = 0;
    int high = max;
    int mid = (low+high)/2;
    while(true){
        // match mid
        if (is_match(mid, k)){
            high = mid;
        } else{
            low = mid;
        }
        mid = (high+low)/2;

        //end
        if (high-low==1){
            return high;
        }
    }
}

void run(){
    init_redirect();
    int n = 0;
    int k = 0;
    int w = 0;
    int max = 0;
    cin >> n;
    for (int i = 0; i < n; ++i) {
        cin >> k;
        max = read_in_one_prob(k);
//        show_edges(k);
        w = find_w(k, max);
        cout<<w<<endl;
    }
}

int main() {
    clock_t start = clock();

    run();

    cout.rdbuf(backup);
    clock_t end = clock();
    double time = static_cast<double>(end-start)/CLOCKS_PER_SEC;
    cout << "time = " << time << endl;
    return 0;
}