version 1.0

task ShuffleEmbedpl {
  command <<<
    shuffle_embed_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}