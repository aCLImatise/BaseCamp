version 1.0

task BedMerge {
  input {
    File? in
    File? out
    Boolean? keep_b_two_b
    Boolean? merge_names
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BedMerge \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="-keep_b2b" false="" keep_b_two_b} \
      ~{true="-merge_names" false="" merge_names} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in: "Input BED file. If unset, reads from STDIN. Default value: ''"
    out: "Output BED file. If unset, writes to STDOUT. Default value: ''"
    keep_b_two_b: "Do not merge non-overlapping but adjacent (back-to-back) regions. Default value: 'false'"
    merge_names: "Merge name columns instead of removing all annotations. Default value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}