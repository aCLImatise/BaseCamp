version 1.0

task BandageInfo {
  input {
    File? tsv
    Boolean? help_all
    String graph
  }
  command <<<
    Bandage info \
      ~{graph} \
      ~{if (tsv) then "--tsv" else ""} \
      ~{if (help_all) then "--helpall" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tsv: "Output the information in a single tab-delimited line starting with the graph file"
    help_all: "View all command line settings"
    graph: ""
  }
  output {
    File out_stdout = stdout()
    File out_tsv = "${in_tsv}"
  }
}