version 1.0

task Crisprtools {
  input {
    String merge
    String help
    String extract
    String filter
    String sanitise
    String stat
    String rm
  }
  command <<<
    crisprtools \
      ~{merge} \
      ~{help} \
      ~{extract} \
      ~{filter} \
      ~{sanitise} \
      ~{stat} \
      ~{rm}
  >>>
  parameter_meta {
    merge: "combine multiple files"
    help: "display this message and exit"
    extract: "extract sequences in fasta"
    filter: "make new files based on parameters"
    sanitise: "change the IDs of elements"
    stat: "show statistics on some or all CRISPRs"
    rm: "remove a group from a .crispr file"
  }
}