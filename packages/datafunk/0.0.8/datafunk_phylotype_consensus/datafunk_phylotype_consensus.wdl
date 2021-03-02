version 1.0

task DatafunkPhylotypeConsensus {
  input {
    File? input_fast_a
    String? input_metadata
    File? clade_file
    Directory? output_folder
    Boolean? verbose
  }
  command <<<
    datafunk phylotype_consensus \
      ~{if defined(input_fast_a) then ("--input-fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(input_metadata) then ("--input-metadata " +  '"' + input_metadata + '"') else ""} \
      ~{if defined(clade_file) then ("--clade-file " +  '"' + clade_file + '"') else ""} \
      ~{if defined(output_folder) then ("--output-folder " +  '"' + output_folder + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0"
  }
  parameter_meta {
    input_fast_a: "Fasta file for splitting into phylotypes"
    input_metadata: "Input metadata (csv) with phylotype information"
    clade_file: "Clade file stating the phylotypes needed to be grouped"
    output_folder: "Output folder for the phylotype fasta files and\\nconsensus file"
    verbose: "Run with high verbosity (debug level logging)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder = "${in_output_folder}"
  }
}