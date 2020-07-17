version 1.0

task CactusFilterSmallFastaSequences.py {
  input {
    String? prefix
    Int? length
    String fast_a_input_file
    String fast_a_output_file
  }
  command <<<
    cactus_filterSmallFastaSequences.py \
      ~{fast_a_input_file} \
      ~{fast_a_output_file} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""}
  >>>
  parameter_meta {
    prefix: "only filter sequences with prefix in name"
    length: "filter shorter than length [default=1000]"
    fast_a_input_file: ""
    fast_a_output_file: ""
  }
}