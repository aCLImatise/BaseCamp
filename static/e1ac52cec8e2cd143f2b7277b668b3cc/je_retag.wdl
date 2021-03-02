version 1.0

task JeRetag {
  input {
    Boolean? std_help
    String header_dot
    String using
    String line_dot
    String act_gtac
    String null_dot
  }
  command <<<
    je retag \
      ~{header_dot} \
      ~{using} \
      ~{line_dot} \
      ~{act_gtac} \
      ~{null_dot} \
      ~{if (std_help) then "--stdhelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    std_help: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    header_dot: "Counting starts at 1 and negative numbers can be used to start counting from the end "
    using: "a hyphen ('-'). The order of concatenation follows the order of UMI_SLOT in the command "
    line_dot: "For example, consider the following read name that lists 3 different sequence codes in "
    act_gtac: "ACTCTAC,TCTGTAC,ACTGTAG  "
    null_dot: "RGPG=String                   Read Group program group; only considered when RG=true  Default value: null. "
  }
  output {
    File out_stdout = stdout()
  }
}