version 1.0

task SampleOverview {
  input {
    File? in
    File? out
    Int? window
    String? add_cols
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    SampleOverview \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(window) then ("-window " +  '"' + window + '"') else ""} \
      ~{if defined(add_cols) then ("-add_cols " +  '"' + add_cols + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  parameter_meta {
    in: "Input variant lists in GSvar format."
    out: "Output variant list file in GSvar format."
    window: "Window to consider around indel positions to compensate for differing alignments.\\nDefault value: '100'"
    add_cols: "Comma-separated list of input columns that shall be added to the output. By default, all columns that are present in all input files.\\nDefault value: '[auto]'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}