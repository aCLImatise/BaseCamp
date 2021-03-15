version 1.0

task TsvMerge {
  input {
    File? in
    String? cols
    File? out
    Boolean? numeric
    Boolean? simple
    File? mv
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    TsvMerge \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(cols) then ("-cols " +  '"' + cols + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (numeric) then "-numeric" else ""} \
      ~{if (simple) then "-simple" else ""} \
      ~{if defined(mv) then ("-mv " +  '"' + mv + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0"
  }
  parameter_meta {
    in: "Input TSV files that are merged. If only one file is given, each line in this file is interpreted as an input file path."
    cols: "Comma-separated list of column names used as key for merging."
    out: "Output file. If unset, writes to STDOUT.\\nDefault value: ''"
    numeric: "If set, column names are interpreted as 1-based column numbers.\\nDefault value: 'false'"
    simple: "Fast and memory-efficient mode for merging files that are ordered in the same way and have no missing lines.\\nDefault value: 'false'"
    mv: "Missing value, i.e. value that is inserted when key is missing in a file.\\nDefault value: ''"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}