version 1.0

task OmeroHelp {
  input {
    Boolean? recursive
    Boolean? all
    Boolean? list
    String topic
  }
  command <<<
    omero help \
      ~{topic} \
      ~{true="--recursive" false="" recursive} \
      ~{true="--all" false="" all} \
      ~{true="--list" false="" list}
  >>>
  parameter_meta {
    recursive: "Also print help for all subcommands"
    all: "Print help for all commands and topics"
    list: "Print list of all commands and subcommands"
    topic: "Command or topic for more information"
  }
}