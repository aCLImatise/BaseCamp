version 1.0

task Tin.py {
  input {
    String? input_bam_files
    String? ref_gene
    Int? min_cov
    String? sample_size
    Boolean? subtract_background
  }
  command <<<
    tin.py \
      ~{if defined(input_bam_files) then ("--input " +  '"' + input_bam_files + '"') else ""} \
      ~{if defined(ref_gene) then ("--refgene " +  '"' + ref_gene + '"') else ""} \
      ~{if defined(min_cov) then ("--minCov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(sample_size) then ("--sample-size " +  '"' + sample_size + '"') else ""} \
      ~{true="--subtract-background" false="" subtract_background}
  >>>
  parameter_meta {
    input_bam_files: "Input BAM file(s). \"-i\" takes these input: 1) a single BAM file. 2) \",\" separated BAM files (no spaces allowed). 3) directory containing one or more bam files. 4) plain text file containing the path of one or more bam files (Each row is a BAM file path). All BAM files should be sorted and indexed using samtools. [required]"
    ref_gene: "Reference gene model in BED format. Must be strandard 12-column BED file. [required]"
    min_cov: "Minimum number of read mapped to a transcript. default=10"
    sample_size: "Number of equal-spaced nucleotide positions picked from mRNA. Note: if this number is larger than the length of mRNA (L), it will be halved until it's smaller than L. default=100"
    subtract_background: "Subtract background noise (estimated from intronic reads). Only use this option if there are substantial intronic reads."
  }
}