version 1.0

task VcfExtractSamples {
  input {
    String? samples
    File? in
    File? out
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    VcfExtractSamples \
      ~{if defined(samples) then ("-samples " +  '"' + samples + '"') else ""} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    samples: "Comma-separated list of samples to extract (in the given order)."
    in: "Input VCF file. If unset, reads from STDIN. Default value: ''"
    out: "Output VCF list. If unset, writes to STDOUT. Default value: ''"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}