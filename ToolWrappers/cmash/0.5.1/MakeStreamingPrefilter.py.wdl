version 1.0

task MakeStreamingPrefilterpy {
  command <<<
    MakeStreamingPrefilter_py
  >>>
  output {
    File out_stdout = stdout()
  }
}