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
      ~{if (no_merge) then "-nomerge" else ""} \
      ~{if (filename) then "-filename" else ""} \
      ~{if defined(fai) then ("-fai " +  '"' + fai + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "Input BED file. If unset, reads from STDIN.\\nDefault value: ''"
    out: "Output file. If unset, writes to STDOUT.\\nDefault value: ''"
    no_merge: "If set, the input is not merged before printing statistics.\\nDefault value: 'false'"
    filename: "If set, prints the input file name before each line.\\nDefault value: 'false'"
    fai: "If set, checks that the maximum position for each chromosome is not exceeded.\\nDefault value: ''"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}