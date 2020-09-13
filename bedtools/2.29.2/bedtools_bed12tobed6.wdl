version 1.0

task BedtoolsBed12tobed6 {
  input {
    Boolean? force_score_based
    Int? i
  }
  command <<<
    bedtools bed12tobed6 \
      ~{if (force_score_based) then "-n" else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    force_score_based: "Force the score to be the (1-based) block number from the BED12."
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}