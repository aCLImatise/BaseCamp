version 1.0

task VcfToTsv {
  input {
    File? in
    File? out
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    VcfToTsv \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in: "Input variant list in VCF format."
    out: "Output variant list in TSV format."
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}