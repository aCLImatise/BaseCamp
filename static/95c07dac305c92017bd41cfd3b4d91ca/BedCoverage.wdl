version 1.0

task BedCoverage {
  input {
    File? bam
    Int? min_mapq
    Boolean? dup
    File? in
    String? mode
    Int? decimals
    File? out
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BedCoverage \
      ~{if defined(bam) then ("-bam " +  '"' + bam + '"') else ""} \
      ~{if defined(min_mapq) then ("-min_mapq " +  '"' + min_mapq + '"') else ""} \
      ~{true="-dup" false="" dup} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(mode) then ("-mode " +  '"' + mode + '"') else ""} \
      ~{if defined(decimals) then ("-decimals " +  '"' + decimals + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    bam: "Input BAM file(s)."
    min_mapq: "Minimum mapping quality. Default value: '1'"
    dup: "Include reads marked as duplicates. Default value: 'false'"
    in: "Input BED file (note that overlapping regions will be merged before processing). If unset, reads from STDIN. Default value: ''"
    mode: "Mode to optimize run time. Use 'panel' mode if only a small part of the data in the BAM file is accessed, e.g. a sub-panel of an exome. Default value: 'default' Valid: 'default,panel'"
    decimals: "Number of decimals used in output. Default value: '2'"
    out: "Output BED file. If unset, writes to STDOUT. Default value: ''"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}