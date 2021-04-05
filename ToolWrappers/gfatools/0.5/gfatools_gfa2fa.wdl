version 1.0

task GfatoolsGfa2fa {
  input {
    Int? line_length
    Boolean? output_stable_sequences
    Boolean? skip_rank_
    Boolean? only_output_rank
    String in_dot_gfa
  }
  command <<<
    gfatools gfa2fa \
      ~{in_dot_gfa} \
      ~{if defined(line_length) then ("-l " +  '"' + line_length + '"') else ""} \
      ~{if (output_stable_sequences) then "-s" else ""} \
      ~{if (skip_rank_) then "-P" else ""} \
      ~{if (only_output_rank) then "-0" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gfatools:0.5--hed695b0_0"
  }
  parameter_meta {
    line_length: "line length [60]"
    output_stable_sequences: "output stable sequences (rGFA only)"
    skip_rank_: "skip rank-0 sequences (rGFA only; force -s)"
    only_output_rank: "only output rank-0 sequences (rGFA only; force -s)"
    in_dot_gfa: ""
  }
  output {
    File out_stdout = stdout()
  }
}