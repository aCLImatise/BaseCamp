version 1.0

task DatafunkRemoveFasta {
  input {
    File? input_fast_a
    File? filter_file
    File? output_fast_a
    Boolean? verbose
  }
  command <<<
    datafunk remove_fasta \
      ~{if defined(input_fast_a) then ("--input-fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(filter_file) then ("--filter-file " +  '"' + filter_file + '"') else ""} \
      ~{if defined(output_fast_a) then ("--output-fasta " +  '"' + output_fast_a + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0"
  }
  parameter_meta {
    input_fast_a: "Input file: something about the input file format"
    filter_file: "Filter file for filtering based on filter file"
    output_fast_a: "Output file name for resulting filtered fasta file"
    verbose: "Run with high verbosity (debug level logging)"
  }
  output {
    File out_stdout = stdout()
    File out_output_fast_a = "${in_output_fast_a}"
  }
}