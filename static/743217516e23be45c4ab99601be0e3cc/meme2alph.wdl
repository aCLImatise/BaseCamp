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
    docker: "None"
  }
  parameter_meta {
    motifs_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}