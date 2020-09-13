version 1.0

task Ssucmfetch {
  input {
    Boolean? second_cmdline_arg
    File? output_cm_file_f
    File? output_cm_file_named
    Boolean? index
    String cm_file
    String keyfile
    String key
  }
  command <<<
    ssu_cmfetch \
      ~{cm_file} \
      ~{keyfile} \
      ~{key} \
      ~{if (second_cmdline_arg) then "-f" else ""} \
      ~{if defined(output_cm_file_f) then ("-o " +  '"' + output_cm_file_f + '"') else ""} \
      ~{if (output_cm_file_named) then "-O" else ""} \
      ~{if (index) then "--index" else ""}
  >>>
  parameter_meta {
    second_cmdline_arg: ": second cmdline arg is a file of names to retrieve"
    output_cm_file_f: ": output CM to file <f> instead of stdout"
    output_cm_file_named: ": output CM to file named <key>"
    index: ": index the <cmfile>, creating <cmfile>.ssi"
    cm_file: ""
    keyfile: ""
    key: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_cm_file_f = "${in_output_cm_file_f}"
    File out_output_cm_file_named = "${in_output_cm_file_named}"
  }
}