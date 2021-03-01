version 1.0

task Bed12ToBed6 {
  input {
    Boolean? force_score_be
    Int? i
  }
  command <<<
    bed12ToBed6 \
      ~{if (force_score_be) then "-n" else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    force_score_be: "Force the score to be the (1-based) block number from the BED12."
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}