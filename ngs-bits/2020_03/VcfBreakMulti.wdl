version 1.0

task VcfBreakMulti {
  input {
    File? in
    File? out
    Boolean? no_errors
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    VcfBreakMulti \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="-no_errors" false="" no_errors} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in: "Input VCF file. If unset, reads from STDIN. Default value: ''"
    out: "Output VCF list. If unset, writes to STDOUT. Default value: ''"
    no_errors: "Ignore VCF format errors if possible. Default value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}