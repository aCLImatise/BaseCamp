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
      ~{if (keep_b_two_b) then "-keep_b2b" else ""} \
      ~{if (merge_names) then "-merge_names" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  parameter_meta {
    in: "Input BED file. If unset, reads from STDIN.\\nDefault value: ''"
    out: "Output BED file. If unset, writes to STDOUT.\\nDefault value: ''"
    keep_b_two_b: "Do not merge non-overlapping but adjacent (back-to-back) regions.\\nDefault value: 'false'"
    merge_names: "Merge name columns instead of removing all annotations.\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}