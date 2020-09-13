version 1.0

task BedIntersect {
  input {
    File? in_two
    File? mode
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
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  parameter_meta {
    in_two: "Second input BED file."
    mode: "Output mode: intersect of both files (intersect), original entry of file 1 (in) or original entry of file 2 (in2).\\nDefault value: 'intersect'\\nValid: 'intersect,in,in2'"
    in: "Input BED file. If unset, reads from STDIN.\\nDefault value: ''"
    out: "Output BED file. If unset, writes to STDOUT.\\nDefault value: ''"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_mode = "${in_mode}"
    File out_out = "${in_out}"
  }
}