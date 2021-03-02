version 1.0

task NextflowCloudList {
  input {
    Boolean? region
    String cluster_name
  }
  command <<<
    nextflow cloud list \
      ~{cluster_name} \
      ~{if (region) then "-region" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    region: "The region to use. Overrides config/env settings.\\n"
    cluster_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}