version 1.0

task Meme2alph {
  input {
    File motifs_file
  }
  command <<<
    meme2alph \
      ~{motifs_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    motifs_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}