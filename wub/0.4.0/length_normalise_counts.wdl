version 1.0

task LengthNormaliseCounts.pyOutputCount {
  input {
    String? f
    Int length_normalise_counts_do_tpy
    String input_counts
    String output_count
  }
  command <<<
    length_normalise_counts.py output_count \
      ~{length_normalise_counts_do_tpy} \
      ~{input_counts} \
      ~{output_count} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    f: ""
    length_normalise_counts_do_tpy: ""
    input_counts: ""
    output_count: ""
  }
}