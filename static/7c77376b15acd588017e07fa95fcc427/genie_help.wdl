version 1.0

task GenieHelp {
  input {
    String? flagsFlags
  }
  command <<<
    genie help \
      ~{flagsFlags}
  >>>
}