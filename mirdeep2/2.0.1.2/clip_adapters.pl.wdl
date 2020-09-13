version 1.0

task ClipAdapterspl {
  command <<<
    clip_adapters_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}