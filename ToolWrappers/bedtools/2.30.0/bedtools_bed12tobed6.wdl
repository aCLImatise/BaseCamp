version 1.0

task BedtoolsBed12tobed6 {
  input {
    Boolean? force_score_be
    Int? i
  }
  command <<<
    bedtools bed12tobed6 \
      ~{if (force_score_be) then "-n" else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0"
  }
  parameter_meta {
    force_score_be: "Force the score to be the (1-based) block number from the BED12."
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}