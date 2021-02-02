version 1.0

task ClipAdaptersplorig {
  command <<<
    clip_adapters_pl_orig
  >>>
  output {
    File out_stdout = stdout()
  }
}