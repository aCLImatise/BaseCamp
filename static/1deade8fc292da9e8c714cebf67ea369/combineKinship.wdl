version 1.0

task CombineKinship {
  input {
    Boolean? out
    Boolean? pc_a
    Boolean? thread
  }
  command <<<
    combineKinship \
      ~{true="--out" false="" out} \
      ~{true="--pca" false="" pc_a} \
      ~{true="--thread" false="" thread}
  >>>
  parameter_meta {
    out: ": Output prefix for autosomal kinship calculation"
    pc_a: ": Decomoposite calculated kinship matrix."
    thread: ": Specify number of parallel threads to speed up"
  }
}