version 1.0

task BedShrink {
  input {
    Int? number_bases_shrink
    File? in
    File? out
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BedShrink \
      ~{if defined(number_bases_shrink) then ("-n " +  '"' + number_bases_shrink + '"') else ""} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    number_bases_shrink: "The number of bases to shrink (on both sides of each region)."
    in: "Input BED file. If unset, reads from STDIN. Default value: ''"
    out: "Output BED file. If unset, writes to STDOUT. Default value: ''"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}