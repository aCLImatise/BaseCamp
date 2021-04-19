version 1.0

task ClipAdapterspl {
  command <<<
    clip_adapters_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}