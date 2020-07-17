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
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in: "Input bam file."
    out: "Output bam file."
    min_match: "Minimum number of CIGAR matches (M). Default value: '30'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}