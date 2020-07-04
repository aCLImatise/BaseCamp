version 1.0

task FilterStage2.prl {
  input {
    Boolean? cat
    Boolean? thresh
  }
  command <<<
    filter-stage-2.prl \
      ~{true="--cat" false="" cat} \
      ~{true="--thresh" false="" thresh}
  >>>
  parameter_meta {
    cat: "The RepeatMasker output file. It can either be a .cat file or a .out file, but a .out file is preferred."
    thresh: "The number of times a sequence must appear for it to be reported."
  }
}