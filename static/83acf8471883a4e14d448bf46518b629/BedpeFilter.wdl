version 1.0

task BedpeFilter {
  input {
    File? in
    File? out
    File? bed
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BedpeFilter \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(bed) then ("-bed " +  '"' + bed + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  parameter_meta {
    in: "Input BEDPE file. If unset, reads from STDIN.\\nDefault value: ''"
    out: "Output BEDPE file. If unset, writes to STDOUT.\\nDefault value: ''"
    bed: "BED file that is used as ROI.\\nDefault value: ''"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}