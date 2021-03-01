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
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    copyright: "(2014) The Regents of the University of California."
  }
  output {
    File out_stdout = stdout()
  }
}