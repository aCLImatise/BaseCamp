version 1.0

task DnaseBiasEstimator.py {
  input {
    String regions
    String reads
    String genome_sequence
    String genome_size
    String output_file_prefix
  }
  command <<<
    dnase_bias_estimator.py \
      ~{regions} \
      ~{reads} \
      ~{genome_sequence} \
      ~{genome_size} \
      ~{output_file_prefix}
  >>>
  parameter_meta {
    regions: "BED file of the regions you want to exclude from calculating the bias. This is usually the DHSs."
    reads: "The sorted, indexed BAM file containing the DNase-seq data"
    genome_sequence: "The sorted, indexed FASTA file containing the genome sequence"
    genome_size: "The .chrom.sizes file containing chromosome sizes generated using something like \"mysql --user=genome --host=genome- mysql.cse.ucsc.edu -A -e \"select chrom, size from hg19.chromInfo\" > hg19.chrom.sizes\""
    output_file_prefix: "output file prefix to write the observed/expected ratios to (will append .txt and .pickle)"
  }
}