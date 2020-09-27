version 1.0

task JeDropseq {
  input {
    Boolean? displays_options_specific
    String becomes
    File path_dot
  }
  command <<<
    je dropseq \
      ~{becomes} \
      ~{path_dot} \
      ~{if (displays_options_specific) then "-H" else ""}
  >>>
  parameter_meta {
    displays_options_specific: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    becomes: "'@D3FCO8P1:178:C1WLBACXX:7:1101:1836:1965:1:N:0:BARCODE'"
    path_dot: "Required. "
  }
  output {
    File out_stdout = stdout()
  }
}