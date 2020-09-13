version 1.0

task Tinpy {
  input {
    File? input_bam_files
    File? ref_gene
    Int? min_cov
    Int? sample_size
    Boolean? subtract_background
  }
  command <<<
    tin_py \
      ~{if defined(input_bam_files) then ("--input " +  '"' + input_bam_files + '"') else ""} \
      ~{if defined(ref_gene) then ("--refgene " +  '"' + ref_gene + '"') else ""} \
      ~{if defined(min_cov) then ("--minCov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(sample_size) then ("--sample-size " +  '"' + sample_size + '"') else ""} \
      ~{if (subtract_background) then "--subtract-background" else ""}
  >>>
  parameter_meta {
    input_bam_files: "Input BAM file(s). \\\"-i\\\" takes these input: 1) a single\\nBAM file. 2) \\\",\\\" separated BAM files (no spaces\\nallowed). 3) directory containing one or more bam\\nfiles. 4) plain text file containing the path of one\\nor more bam files (Each row is a BAM file path). All\\nBAM files should be sorted and indexed using samtools.\\n[required]"
    ref_gene: "Reference gene model in BED format. Must be strandard\\n12-column BED file. [required]"
    min_cov: "Minimum number of read mapped to a transcript.\\ndefault=10"
    sample_size: "Number of equal-spaced nucleotide positions picked\\nfrom mRNA. Note: if this number is larger than the\\nlength of mRNA (L), it will be halved until it's\\nsmaller than L. default=100"
    subtract_background: "Subtract background noise (estimated from intronic\\nreads). Only use this option if there are substantial\\nintronic reads.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}