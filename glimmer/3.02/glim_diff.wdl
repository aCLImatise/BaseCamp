version 1.0

task GlimDiff.awkBPred {
  input {
    String? aAPred
    String? bBPred
  }
  command <<<
    glim-diff.awk b-pred \
      ~{aAPred} \
      ~{bBPred}
  >>>
}