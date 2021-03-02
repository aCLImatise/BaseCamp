version 1.0

task JeClip {
  input {
    Boolean? std_help
    String je_clipper
  }
  command <<<
    je clip \
      ~{je_clipper} \
      ~{if (std_help) then "--stdhelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    std_help: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    je_clipper: ""
  }
  output {
    File out_stdout = stdout()
  }
}