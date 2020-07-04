version 1.0

task MakeFastaFromFastg.py {
  input {
    String? graph
    String? output_file_name
  }
  command <<<
    make_fasta_from_fastg.py \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""}
  >>>
  parameter_meta {
    graph: "(spades 3.50+) FASTG file to process [recommended: before_rr.fastg]"
    output_file_name: "output file name for FASTA of cycles"
  }
}