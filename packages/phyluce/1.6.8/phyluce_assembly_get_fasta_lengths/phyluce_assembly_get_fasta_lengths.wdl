version 1.0

task PhyluceAssemblyGetFastaLengths {
  input {
    File? fasta_file_summarize
    Boolean? csv
  }
  command <<<
    phyluce_assembly_get_fasta_lengths \
      ~{if defined(fasta_file_summarize) then ("--input " +  '"' + fasta_file_summarize + '"') else ""} \
      ~{if (csv) then "--csv" else ""}
  >>>
  parameter_meta {
    fasta_file_summarize: "The fasta file to summarize"
    csv: "Give output in CSV"
  }
  output {
    File out_stdout = stdout()
  }
}