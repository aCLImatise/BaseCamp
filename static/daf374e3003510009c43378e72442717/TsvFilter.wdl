version 1.0

task TsvFilter {
  input {
    String? filter
    File? in
    File? out
    Boolean? numeric
    Boolean? invert_filter_default
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    TsvFilter \
      ~{if defined(filter) then ("-filter " +  '"' + filter + '"') else ""} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="-numeric" false="" numeric} \
      ~{true="-v" false="" invert_filter_default} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    filter: "Filter string with column name, operation and value,e.g. 'depth > 17'."
    in: "Input TSV file. If unset, reads from STDIN. Default value: ''"
    out: "Output TSV file. If unset, writes to STDOUT. Default value: ''"
    numeric: "If set, column name is interpreted as a 1-based column number. Default value: 'false'"
    invert_filter_default: "Invert filter. Default value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}