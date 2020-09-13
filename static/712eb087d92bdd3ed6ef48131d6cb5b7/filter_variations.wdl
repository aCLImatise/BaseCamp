version 1.0

task Filtervariations {
  input {
    Boolean? arg_maximum_allowed_distance
    Boolean? arg_maximum_allowed_difference
    Boolean? arg_minimum_length
    File variants_file
  }
  command <<<
    filter_variations \
      ~{variants_file} \
      ~{if (arg_maximum_allowed_distance) then "-o" else ""} \
      ~{if (arg_maximum_allowed_difference) then "-z" else ""} \
      ~{if (arg_minimum_length) then "-l" else ""}
  >>>
  parameter_meta {
    arg_maximum_allowed_distance: "[ --max_offset ] arg (=100)     Maximum allowed distance."
    arg_maximum_allowed_difference: "[ --max_length_diff ] arg (=20) Maximum allowed length difference."
    arg_minimum_length: "[ --min_length ] arg (=10)      Minimum length of variations to be\\nwritten.\\n"
    variants_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}