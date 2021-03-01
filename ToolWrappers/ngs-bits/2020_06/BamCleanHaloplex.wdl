version 1.0

task BamCleanHaloplex {
  input {
    File? in
    File? out
    Int? min_match
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BamCleanHaloplex \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(min_match) then ("-min_match " +  '"' + min_match + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "Input bam file."
    out: "Output bam file."
    min_match: "Minimum number of CIGAR matches (M).\\nDefault value: '30'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}