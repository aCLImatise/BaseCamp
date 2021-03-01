version 1.0

task ClipAdaptersplorig {
  command <<<
    clip_adapters_pl_orig
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}