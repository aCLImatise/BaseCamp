version 1.0

task BedtoolsBed12tobed6 {
  input {
    Boolean? force_score_based
    String? i
  }
  command <<<
    bedtools bed12tobed6 \
      ~{true="-n" false="" force_score_based} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    force_score_based: "Force the score to be the (1-based) block number from the BED12."
    i: ""
  }
}