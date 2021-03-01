version 1.0

task LengthNormaliseCountspyOutputCount {
  input {
    String? f
    String length_normalise_counts_do_tpy
    String input_counts
    String output_count
  }
  command <<<
    length_normalise_counts_py output_count \
      ~{length_normalise_counts_do_tpy} \
      ~{input_counts} \
      ~{output_count} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0"
  }
  parameter_meta {
    f: ""
    length_normalise_counts_do_tpy: ""
    input_counts: ""
    output_count: ""
  }
  output {
    File out_stdout = stdout()
  }
}