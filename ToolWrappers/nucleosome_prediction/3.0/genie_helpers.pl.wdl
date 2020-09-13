version 1.0

task GenieHelperspl {
  command <<<
    genie_helpers_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}