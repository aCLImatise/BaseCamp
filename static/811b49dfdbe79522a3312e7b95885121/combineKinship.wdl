version 1.0

task CombineKinship {
  input {
    Boolean? out
    Boolean? pc_a
    Boolean? thread
  }
  command <<<
    combineKinship \
      ~{if (out) then "--out" else ""} \
      ~{if (pc_a) then "--pca" else ""} \
      ~{if (thread) then "--thread" else ""}
  >>>
  parameter_meta {
    out: ": Output prefix for autosomal kinship calculation"
    pc_a: ": Decomoposite calculated kinship matrix."
    thread: ": Specify number of parallel threads to speed up"
  }
  output {
    File out_stdout = stdout()
  }
}