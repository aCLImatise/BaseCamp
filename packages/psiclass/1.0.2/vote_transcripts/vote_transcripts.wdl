version 1.0

task Votetranscripts {
  input {
    Boolean? lg
    Float? threshold_average_coverage
  }
  command <<<
    vote_transcripts \
      ~{if (lg) then "--lg" else ""} \
      ~{if defined(threshold_average_coverage) then ("-d " +  '"' + threshold_average_coverage + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/psiclass:1.0.2--he1b5a44_0"
  }
  parameter_meta {
    lg: ": path to the list of GTF files."
    threshold_average_coverage: ": threshold of average coverage depth across all the samples. (default: 1)"
  }
  output {
    File out_stdout = stdout()
  }
}