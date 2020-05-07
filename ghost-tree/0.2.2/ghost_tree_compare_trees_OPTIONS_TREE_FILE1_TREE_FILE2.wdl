version 1.0

task GhostTreeCompareTreesOPTIONSTREEFILE1TREEFILE2 {
  input {
    Boolean methodMethod
  }
  command <<<
    ghost-tree compare-trees OPTIONS TREE_FILE1 TREE_FILE2 \
      ~{true="--method" false="" methodMethod}
  >>>
}