version 1.0

task FilterContig {
  input {
    String contig_file
    String id
  }
  command <<<
    filter_contig \
      ~{contig_file} \
      ~{id}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    contig_file: ""
    id: ""
  }
  output {
    File out_stdout = stdout()
  }
}