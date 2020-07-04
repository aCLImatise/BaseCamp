version 1.0

task AssemblyticsDeltaOutputPrefix {
  input {
    String unique_length_required
    Int min_size
    Int max_size
  }
  command <<<
    Assemblytics delta output_prefix \
      ~{unique_length_required} \
      ~{min_size} \
      ~{max_size}
  >>>
  parameter_meta {
    unique_length_required: ""
    min_size: ""
    max_size: ""
  }
}