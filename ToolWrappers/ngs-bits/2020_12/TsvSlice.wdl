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
      ~{if (numeric) then "-numeric" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0"
  }
  parameter_meta {
    cols: "Comma-separated list of column names to extract."
    in: "Input TSV file. If unset, reads from STDIN.\\nDefault value: ''"
    out: "Output file. If unset, writes to STDOUT.\\nDefault value: ''"
    numeric: "If set, column names are interpreted as 1-based column numbers.\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}