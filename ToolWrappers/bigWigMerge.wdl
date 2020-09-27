version 1.0

task BigWigMerge {
  input {
    Int? threshold
    Int? adjust
    String? clip
    Boolean? in_list
    Boolean? max
    String inn_dot_bw
  }
  command <<<
    bigWigMerge \
      ~{inn_dot_bw} \
      ~{if defined(threshold) then ("-threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(adjust) then ("-adjust " +  '"' + adjust + '"') else ""} \
      ~{if defined(clip) then ("-clip " +  '"' + clip + '"') else ""} \
      ~{if (in_list) then "-inList" else ""} \
      ~{if (max) then "-max" else ""}
  >>>
  parameter_meta {
    threshold: "- don't output values at or below this threshold. Default is 0.0"
    adjust: "- add adjustment to each value"
    clip: "- values higher than this are clipped to this value"
    in_list: "- input file are lists of file names of bigWigs"
    max: "- merged value is maximum from input files rather than sum"
    inn_dot_bw: ""
  }
  output {
    File out_stdout = stdout()
  }
}