version 1.0

task PhyluceNcbiChunkFastaForNcbi {
  input {
    String? the_input_fasta
  }
  command <<<
    phyluce_ncbi_chunk_fasta_for_ncbi \
      ~{if defined(the_input_fasta) then ("--input " +  '"' + the_input_fasta + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    the_input_fasta: "The input FASTA"
  }
  output {
    File out_stdout = stdout()
  }
}