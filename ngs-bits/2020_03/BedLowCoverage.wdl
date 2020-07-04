version 1.0

task BedLowCoverage {
  input {
    File? bam
    Int? cut_off
    File? in
    Boolean? wgs
    File? out
    Int? min_mapq
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BedLowCoverage \
      ~{if defined(bam) then ("-bam " +  '"' + bam + '"') else ""} \
      ~{if defined(cut_off) then ("-cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{true="-wgs" false="" wgs} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(min_mapq) then ("-min_mapq " +  '"' + min_mapq + '"') else ""} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    bam: "Input BAM file."
    cut_off: "Minimum depth to consider a base 'high coverage'."
    in: "Input BED file containing the regions of interest. If unset, reads from STDIN. Default value: ''"
    wgs: "WGS mode without target region. Genome information is taken from the BAM file. Default value: 'false'"
    out: "Output BED file. If unset, writes to STDOUT. Default value: ''"
    min_mapq: "Minimum mapping quality to consider a read. Default value: '1'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}