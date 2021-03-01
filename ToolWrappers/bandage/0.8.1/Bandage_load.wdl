version 1.0

task BandageLoad {
  input {
    Boolean? draw
    Boolean? help_all
    String graph
  }
  command <<<
    Bandage load \
      ~{graph} \
      ~{if (draw) then "--draw" else ""} \
      ~{if (help_all) then "--helpall" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    draw: "Draw graph after loading"
    help_all: "View all command line settings"
    graph: ""
  }
  output {
    File out_stdout = stdout()
  }
}