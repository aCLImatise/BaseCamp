version 1.0

task MafPrintScorespy {
  input {
    Boolean? recalculate
    Boolean? l_norm
  }
  command <<<
    maf_print_scores_py \
      ~{if (recalculate) then "--recalculate" else ""} \
      ~{if (l_norm) then "--lnorm" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bx-python:0.8.10--py36h5e0341f_0"
  }
  parameter_meta {
    recalculate: "don't use the score from the maf, recalculate (using\\nhox70 matrix)"
    l_norm: "divide (normalize) score by alignment text length"
  }
  output {
    File out_stdout = stdout()
  }
}