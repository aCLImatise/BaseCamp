version 1.0

task GenieVersion {
  input {
    String? flagsFlags
  }
  command <<<
    genie version \
      ~{flagsFlags}
  >>>
}