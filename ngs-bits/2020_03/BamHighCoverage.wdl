version 1.0

task BamHighCoverage {
  input {
    File? in
    Int? cut_off
    Int? min_mapq
    File? out
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BamHighCoverage \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(cut_off) then ("-cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(min_mapq) then ("-min_mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in: "Input BAM file."
    cut_off: "Minimum depth to consider a chromosomal position 'high coverage'."
    min_mapq: "Minimum mapping quality. Default value: '1'"
    out: "Output BED file. If unset, writes to STDOUT. Default value: ''"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}