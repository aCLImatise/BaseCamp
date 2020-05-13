version 1.0

task BoltHelp {
  input {
    String? genieGenie
    String? helpHelp
    String? flagsFlags
  }
  command <<<
    bolt help \
      ~{genieGenie} \
      ~{helpHelp} \
      ~{flagsFlags}
  >>>
}