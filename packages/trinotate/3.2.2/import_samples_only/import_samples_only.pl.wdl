version 1.0

task ImportSamplesOnlypl {
  command <<<
    import_samples_only_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}