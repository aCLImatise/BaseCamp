version 1.0

task BedIntersect {
  input {
    File? in_two
    String? mode
    File? in
    File? out
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BedIntersect \
      ~{if defined(in_two) then ("-in2 " +  '"' + in_two + '"') else ""} \
      ~{if defined(mode) then ("-mode " +  '"' + mode + '"') else ""} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in_two: "Second input BED file."
    mode: "Output mode: intersect of both files (intersect), original entry of file 1 (in) or original entry of file 2 (in2). Default value: 'intersect' Valid: 'intersect,in,in2'"
    in: "Input BED file. If unset, reads from STDIN. Default value: ''"
    out: "Output BED file. If unset, writes to STDOUT. Default value: ''"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}