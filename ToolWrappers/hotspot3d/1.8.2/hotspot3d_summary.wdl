version 1.0

task Hotspot3dSummary {
  input {
    Boolean? clusters_file
    Boolean? output_prefix
  }
  command <<<
    hotspot3d summary \
      ~{if (clusters_file) then "--clusters-file" else ""} \
      ~{if (output_prefix) then "--output-prefix" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    clusters_file: "Clusters file\\nOPTIONAL"
    output_prefix: "Output prefix"
  }
  output {
    File out_stdout = stdout()
  }
}