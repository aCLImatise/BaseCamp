version 1.0

task TsvFilter {
  input {
    String? filter
    File? in
    File? out
    Boolean? numeric
    Boolean? invert_filterdefault_value
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    TsvFilter \
      ~{if defined(filter) then ("-filter " +  '"' + filter + '"') else ""} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (numeric) then "-numeric" else ""} \
      ~{if (invert_filterdefault_value) then "-v" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  parameter_meta {
    filter: "Filter string with column name, operation and value,e.g. 'depth > 17'."
    in: "Input TSV file. If unset, reads from STDIN.\\nDefault value: ''"
    out: "Output TSV file. If unset, writes to STDOUT.\\nDefault value: ''"
    numeric: "If set, column name is interpreted as a 1-based column number.\\nDefault value: 'false'"
    invert_filterdefault_value: "Invert filter.\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}