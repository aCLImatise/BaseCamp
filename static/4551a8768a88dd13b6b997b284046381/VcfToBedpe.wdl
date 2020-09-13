version 1.0

task VcfToBedpe {
  input {
    File? in
    File? out
    Boolean? no_sort
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    VcfToBedpe \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (no_sort) then "-no_sort" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  parameter_meta {
    in: "Input structural variant list in VCF format."
    out: "Output structural variant list in BEDPE format."
    no_sort: "Do not sort results\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
  }
}