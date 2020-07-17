version 1.0

task BedInfo {
  input {
    File? in
    File? out
    Boolean? no_merge
    Boolean? filename
    File? fai
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BedInfo \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="-nomerge" false="" no_merge} \
      ~{true="-filename" false="" filename} \
      ~{if defined(fai) then ("-fai " +  '"' + fai + '"') else ""} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in: "Input BED file. If unset, reads from STDIN. Default value: ''"
    out: "Output file. If unset, writes to STDOUT. Default value: ''"
    no_merge: "If set, the input is not merged before printing statistics. Default value: 'false'"
    filename: "If set, prints the input file name before each line. Default value: 'false'"
    fai: "If set, checks that the maximum position for each chromosome is not exceeded. Default value: ''"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}