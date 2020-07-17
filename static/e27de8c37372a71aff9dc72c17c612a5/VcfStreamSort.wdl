version 1.0

task VcfStreamSort {
  input {
    File? in
    File? out
    Int? number_variants_cache
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    VcfStreamSort \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(number_variants_cache) then ("-n " +  '"' + number_variants_cache + '"') else ""} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in: "Input VCF file. If unset, reads from STDIN. Default value: ''"
    out: "Output VCF list. If unset, writes to STDOUT. Default value: ''"
    number_variants_cache: "Number of variants to cache for sorting. Default value: '10000'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}