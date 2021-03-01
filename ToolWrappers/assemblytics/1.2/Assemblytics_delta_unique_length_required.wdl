version 1.0

task AssemblyticsDeltaUniqueLengthRequired {
  input {
    String assembly_tics
    String delta
    String output_prefix
    String unique_length_required
    String min_size
    String max_size
  }
  command <<<
    Assemblytics delta unique_length_required \
      ~{assembly_tics} \
      ~{delta} \
      ~{output_prefix} \
      ~{unique_length_required} \
      ~{min_size} \
      ~{max_size}
  >>>
  runtime {
    docker: "None"
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