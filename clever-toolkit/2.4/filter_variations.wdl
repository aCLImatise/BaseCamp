version 1.0

task FilterVariations {
  input {
    Boolean? arg_maximum_allowed_distance
    Boolean? arg_maximum_allowed_difference
    Boolean? arg_minimum_length
    String variants_file
  }
  command <<<
    filter-variations \
      ~{variants_file} \
      ~{true="-o" false="" arg_maximum_allowed_distance} \
      ~{true="-z" false="" arg_maximum_allowed_difference} \
      ~{true="-l" false="" arg_minimum_length}
  >>>
  parameter_meta {
    arg_maximum_allowed_distance: "[ --max_offset ] arg (=100)     Maximum allowed distance."
    arg_maximum_allowed_difference: "[ --max_length_diff ] arg (=20) Maximum allowed length difference."
    arg_minimum_length: "[ --min_length ] arg (=10)      Minimum length of variations to be  written."
    variants_file: ""
  }
}