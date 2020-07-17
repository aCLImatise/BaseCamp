version 1.0

task AssemblyticsDeltaMaxSize {
  input {
    String assembly_tics
    String delta
    String output_prefix
    String unique_length_required
    Int min_size
    Int max_size
  }
  command <<<
    Assemblytics delta max_size \
      ~{assembly_tics} \
      ~{delta} \
      ~{output_prefix} \
      ~{unique_length_required} \
      ~{min_size} \
      ~{max_size}
  >>>
  parameter_meta {
    assembly_tics: ""
    delta: ""
    output_prefix: ""
    unique_length_required: ""
    min_size: ""
    max_size: ""
  }
}