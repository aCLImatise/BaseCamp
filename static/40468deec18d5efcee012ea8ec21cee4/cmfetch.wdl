version 1.0

task Cmfetch {
  input {
    Boolean? second_cmdline_arg
    String? output_cm_file_f
    Boolean? output_cm_file_named
    Boolean? index
  }
  command <<<
    cmfetch \
      ~{true="-f" false="" second_cmdline_arg} \
      ~{if defined(output_cm_file_f) then ("-o " +  '"' + output_cm_file_f + '"') else ""} \
      ~{true="-O" false="" output_cm_file_named} \
      ~{true="--index" false="" index}
  >>>
  parameter_meta {
    second_cmdline_arg: ": second cmdline arg is a file of names to retrieve"
    output_cm_file_f: ": output CM to file <f> instead of stdout"
    output_cm_file_named: ": output CM to file named <key>"
    index: ": index the <cmfile>, creating <cmfile>.ssi"
  }
}