version 1.0

task EnrichmAnnotation {
  input {
    String enrich_m
  }
  command <<<
    enrichm Annotation \
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