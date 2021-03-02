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
    docker: "None"
  }
  parameter_meta {
    recalculate: "don't use the score from the maf, recalculate (using\\nhox70 matrix)"
    l_norm: "divide (normalize) score by alignment text length"
  }
  output {
    File out_stdout = stdout()
  }
}