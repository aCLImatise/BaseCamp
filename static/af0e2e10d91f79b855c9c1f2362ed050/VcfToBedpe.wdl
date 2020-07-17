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
      ~{true="-no_sort" false="" no_sort} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in: "Input structural variant list in VCF format."
    out: "Output structural variant list in BEDPE format."
    no_sort: "Do not sort results Default value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}