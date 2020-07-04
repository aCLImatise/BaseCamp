version 1.0

task GimmeMaelstrom {
  input {
    Boolean? h
    String? p
    String gimme
    String subcommand
    String maelstrom
  }
  command <<<
    gimme maelstrom \
      ~{gimme} \
      ~{subcommand} \
      ~{maelstrom} \
      ~{true="-h" false="" h} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""}
  >>>
  parameter_meta {
    h: ""
    p: ""
    gimme: ""
    subcommand: ""
    maelstrom: ""
  }
}