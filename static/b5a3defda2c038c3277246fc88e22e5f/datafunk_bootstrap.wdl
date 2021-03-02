version 1.0

task DatafunkBootstrap {
  input {
    String? input_fast_a
    String? output_prefix
    Int? number_generate_default
  }
  command <<<
    datafunk bootstrap \
      ~{if defined(input_fast_a) then ("--input-fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(number_generate_default) then ("-n " +  '"' + number_generate_default + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0"
  }
  parameter_meta {
    input_fast_a: "Alignment in fasta format to bootstrap"
    output_prefix: "Prefix for output files (default is \\\"bootstrap_\\\")"
    number_generate_default: "Number of bootstraps to generate (default is 1)"
  }
  output {
    File out_stdout = stdout()
  }
}