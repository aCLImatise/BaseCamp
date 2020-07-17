version 1.0

task BedExtend {
  input {
    Int? number_bases_extend
    File? in
    File? out
    File? fai
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BedExtend \
      ~{if defined(number_bases_extend) then ("-n " +  '"' + number_bases_extend + '"') else ""} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(fai) then ("-fai " +  '"' + fai + '"') else ""} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    number_bases_extend: "The number of bases to extend (on both sides of each region)."
    in: "Input BED file. If unset, reads from STDIN. Default value: ''"
    out: "Output BED file. If unset, writes to STDOUT. Default value: ''"
    fai: "Optional FASTA index file that determines the maximum position for each chromosome. Default value: ''"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}