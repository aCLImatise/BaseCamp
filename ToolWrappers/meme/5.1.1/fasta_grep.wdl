version 1.0

task Fastagrep {
  input {
    String copyright
  }
  command <<<
    fasta_grep \
      ~{copyright}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    copyright: "(2014) The Regents of the University of California."
  }
  output {
    File out_stdout = stdout()
  }
}