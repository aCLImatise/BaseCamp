version 1.0

task DatafunkMergeFasta {
  input {
    Directory? folder
    String? input_metadata
    File? output_fast_a
    Boolean? verbose
  }
  command <<<
    datafunk merge_fasta \
      ~{if defined(folder) then ("--folder " +  '"' + folder + '"') else ""} \
      ~{if defined(input_metadata) then ("--input-metadata " +  '"' + input_metadata + '"') else ""} \
      ~{if defined(output_fast_a) then ("--output-fasta " +  '"' + output_fast_a + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0"
  }
  parameter_meta {
    folder: "Folder containing all fasta files needed to be merged"
    input_metadata: "Input metadata (csv) for validating sequence\\ninformation"
    output_fast_a: "Output for merged fasta file"
    verbose: "Run with high verbosity (debug level logging)"
  }
  output {
    File out_stdout = stdout()
    File out_output_fast_a = "${in_output_fast_a}"
  }
}