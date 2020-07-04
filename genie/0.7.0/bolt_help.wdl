version 1.0

task BoltHelp {
  input {
    String genie
    String help
    String? flags
  }
  command <<<
    bolt help \
      ~{genie} \
      ~{help} \
      ~{flags}
  >>>
  parameter_meta {
    genie: ""
    help: ""
    flags: ""
  }
}