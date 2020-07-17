version 1.0

task BedReadCount {
  input {
    File? bam
    Int? min_mapq
    File? in
    File? out
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BedReadCount \
      ~{if defined(bam) then ("-bam " +  '"' + bam + '"') else ""} \
      ~{if defined(min_mapq) then ("-min_mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    bam: "Input BAM file."
    min_mapq: "Minimum mapping quality. Default value: '1'"
    in: "Input BED file (note that overlapping regions will be merged before processing). If unset, reads from STDIN. Default value: ''"
    out: "Output BED file. If unset, writes to STDOUT. Default value: ''"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}