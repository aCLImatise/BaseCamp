version 1.0

task Bed12ToBed6 {
  input {
    Boolean? force_score_based
    String? i
  }
  command <<<
    bed12ToBed6 \
      ~{true="-n" false="" force_score_based} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    force_score_based: "Force the score to be the (1-based) block number from the BED12."
    i: ""
  }
}