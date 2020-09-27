version 1.0

task CactusFilterSmallFastaSequencespy {
  input {
    String? prefix
    Int? length
    File fast_a_input_file
    File fast_a_output_file
  }
  command <<<
    cactus_filterSmallFastaSequences_py \
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
  output {
    File out_stdout = stdout()
    File out_fast_a_output_file = "${in_fast_a_output_file}"
  }
}