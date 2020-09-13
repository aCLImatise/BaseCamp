version 1.0

task PhyluceNcbiChunkFastaForNcbi {
  input {
    String? the_input_fasta
    Int? chunk_size
    String? output_prefix
    String? output_suffix
  }
  command <<<
    phyluce_ncbi_chunk_fasta_for_ncbi \
      ~{if defined(the_input_fasta) then ("--input " +  '"' + the_input_fasta + '"') else ""} \
      ~{if defined(chunk_size) then ("--chunk-size " +  '"' + chunk_size + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(output_suffix) then ("--output-suffix " +  '"' + output_suffix + '"') else ""}
  >>>
  parameter_meta {
    the_input_fasta: "The input FASTA"
    chunk_size: ""
    output_prefix: ""
    output_suffix: ""
  }
  output {
    File out_stdout = stdout()
  }
}