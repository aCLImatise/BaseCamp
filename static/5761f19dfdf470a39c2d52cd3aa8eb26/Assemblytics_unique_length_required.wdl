version 1.0

task AssemblyticsUniqueLengthRequired {
  input {
    String assembly_tics
    String delta
    String output_prefix
    String unique_length_required
    String min_size
    String max_size
  }
  command <<<
    Assemblytics unique_length_required \
      ~{assembly_tics} \
      ~{delta} \
      ~{output_prefix} \
      ~{unique_length_required} \
      ~{min_size} \
      ~{max_size}
  >>>
  runtime {
    docker: "quay.io/biocontainers/assemblytics:1.2.1--0"
  }
  parameter_meta {
    assembly_tics: ""
    delta: ""
    output_prefix: ""
    unique_length_required: ""
    min_size: ""
    max_size: ""
  }
  output {
    File out_stdout = stdout()
  }
}