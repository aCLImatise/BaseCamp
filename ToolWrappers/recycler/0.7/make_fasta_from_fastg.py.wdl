version 1.0

task MakeFastaFromFastgpy {
  input {
    File? graph
    File? output_file_name
  }
  command <<<
    make_fasta_from_fastg_py \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    graph: "(spades 3.50+) FASTG file to process [recommended:\\nbefore_rr.fastg]"
    output_file_name: "output file name for FASTA of cycles\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}