version 1.0

task JeClip {
  input {
    Boolean? displays_options_specific
    String je_clipper
  }
  command <<<
    je clip \
      ~{je_clipper} \
      ~{if (displays_options_specific) then "-H" else ""}
  >>>
  parameter_meta {
    displays_options_specific: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    je_clipper: ""
  }
  output {
    File out_stdout = stdout()
  }
}