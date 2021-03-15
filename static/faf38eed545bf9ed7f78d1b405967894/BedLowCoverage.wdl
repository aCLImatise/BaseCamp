version 1.0

task BedLowCoverage {
  input {
    File? bam
    Int? cut_off
    File? in
    Boolean? wgs
    File? out
    Int? min_mapq
    Int? min_base_q
    File? ref
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BedLowCoverage \
      ~{if defined(bam) then ("-bam " +  '"' + bam + '"') else ""} \
      ~{if defined(cut_off) then ("-cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if (wgs) then "-wgs" else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(min_mapq) then ("-min_mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(min_base_q) then ("-min_baseq " +  '"' + min_base_q + '"') else ""} \
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0"
  }
  parameter_meta {
    bam: "Input BAM/CRAM file."
    cut_off: "Minimum depth to consider a base 'high coverage'."
    in: "Input BED file containing the regions of interest. If unset, reads from STDIN.\\nDefault value: ''"
    wgs: "WGS mode without target region. Genome information is taken from the BAM/CRAM file.\\nDefault value: 'false'"
    out: "Output BED file. If unset, writes to STDOUT.\\nDefault value: ''"
    min_mapq: "Minimum mapping quality to consider a read.\\nDefault value: '1'"
    min_base_q: "Minimum base quality to consider a base.\\nDefault value: '0'"
    ref: "Reference genome for CRAM support (mandatory if CRAM is used).\\nDefault value: ''"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}