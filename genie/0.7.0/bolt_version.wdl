version 1.0

task BoltVersion {
  input {
    String? genieGenie
    String? versionVersion
    String? flagsFlags
  }
  command <<<
    bolt version \
      ~{genieGenie} \
      ~{versionVersion} \
      ~{flagsFlags}
  >>>
}