version 1.0

task Fastatrans {
  input {
    String contig_file
  }
  command <<<
    fastatrans \
      ~{contig_file}
  >>>
  parameter_meta {
    contig_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}