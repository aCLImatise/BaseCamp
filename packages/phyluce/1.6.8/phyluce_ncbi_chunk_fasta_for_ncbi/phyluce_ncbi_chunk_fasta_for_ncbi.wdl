version 1.0

task PhyluceNcbiChunkFastaForNcbi {
  input {
    String? var_input
  }
  command <<<
    phyluce_ncbi_chunk_fasta_for_ncbi \
      ~{if defined(var_input) then ("--input " +  '"' + var_input + '"') else ""}
  >>>
  parameter_meta {
    var_input: ""
  }
  output {
    File out_stdout = stdout()
  }
}