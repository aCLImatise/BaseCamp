version 1.0

task BedCoverage {
  input {
    File? bam
    Int? min_mapq
    Boolean? dup
    File? in
    File? mode
    Int? decimals
    File? out
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BedCoverage \
      ~{if defined(bam) then ("-bam " +  '"' + bam + '"') else ""} \
      ~{if defined(min_mapq) then ("-min_mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if (dup) then "-dup" else ""} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(mode) then ("-mode " +  '"' + mode + '"') else ""} \
      ~{if defined(decimals) then ("-decimals " +  '"' + decimals + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  parameter_meta {
    bam: "Input BAM file(s)."
    min_mapq: "Minimum mapping quality.\\nDefault value: '1'"
    dup: "Include reads marked as duplicates.\\nDefault value: 'false'"
    in: "Input BED file (note that overlapping regions will be merged before processing). If unset, reads from STDIN.\\nDefault value: ''"
    mode: "Mode to optimize run time. Use 'panel' mode if only a small part of the data in the BAM file is accessed, e.g. a sub-panel of an exome.\\nDefault value: 'default'\\nValid: 'default,panel'"
    decimals: "Number of decimals used in output.\\nDefault value: '2'"
    out: "Output BED file. If unset, writes to STDOUT.\\nDefault value: ''"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}