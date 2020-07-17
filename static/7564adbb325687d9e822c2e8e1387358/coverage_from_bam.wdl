version 1.0

task CoverageFromBam {
  input {
    Array[String] regions
    String? prefix
    String? stride
    Boolean? summary_only
    String bam
  }
  command <<<
    coverage_from_bam \
      ~{bam} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(stride) then ("--stride " +  '"' + stride + '"') else ""} \
      ~{true="--summary_only" false="" summary_only}
  >>>
  parameter_meta {
    regions: "Only process given regions. (default: None)"
    prefix: "Prefix for output, defaults to basename of bam. (default: None)"
    stride: "Stride in genomic coordinate. (default: 1000)"
    summary_only: "Output only the depth_summary.txt file (default: False)"
    bam: ".fasta/fastq file."
  }
}