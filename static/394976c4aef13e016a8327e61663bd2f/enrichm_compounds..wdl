version 1.0

task EnrichmCompounds {
  input {
    String enrich_m
  }
  command <<<
    enrichm compounds_ \
      ~{enrich_m}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    enrich_m: ""
  }
  output {
    File out_stdout = stdout()
  }
}