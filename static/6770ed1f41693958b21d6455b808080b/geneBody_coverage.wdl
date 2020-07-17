version 1.0

task GeneBodyCoverage.py {
  input {
    String? input_files_bam
    String? ref_gene
    Int? minimum_length
    String? format
    String? out_prefix
  }
  command <<<
    geneBody_coverage.py \
      ~{if defined(input_files_bam) then ("--input " +  '"' + input_files_bam + '"') else ""} \
      ~{if defined(ref_gene) then ("--refgene " +  '"' + ref_gene + '"') else ""} \
      ~{if defined(minimum_length) then ("--minimum_length " +  '"' + minimum_length + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""}
  >>>
  parameter_meta {
    input_files_bam: "Input file(s) in BAM format. \"-i\" takes these input: 1) a single BAM file. 2) \",\" separated BAM files. 3) directory containing one or more bam files. 4) plain text file containing the path of one or more bam file (Each row is a BAM file path). All BAM files should be sorted and indexed using samtools."
    ref_gene: "Reference gene model in bed format. [required]"
    minimum_length: "Minimum mRNA length (bp). mRNA smaller than \"min_mRNA_length\" will be skipped. default=100"
    format: "Output file format, 'pdf', 'png' or 'jpeg'. default=pdf"
    out_prefix: "Prefix of output files(s). [required]"
  }
}