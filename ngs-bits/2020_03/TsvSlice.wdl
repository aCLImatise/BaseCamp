version 1.0

task TsvSlice {
  input {
    String? cols
    File? in
    File? out
    Boolean? numeric
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    TsvSlice \
      ~{if defined(cols) then ("-cols " +  '"' + cols + '"') else ""} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="-numeric" false="" numeric} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    cols: "Comma-separated list of column names to extract."
    in: "Input TSV file. If unset, reads from STDIN. Default value: ''"
    out: "Output file. If unset, writes to STDOUT. Default value: ''"
    numeric: "If set, column names are interpreted as 1-based column numbers. Default value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}