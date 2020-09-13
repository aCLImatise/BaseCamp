version 1.0

task DnaseBiasEstimatorpy {
  input {
    String calculates_mer_bias
    String regions
    String reads
    String genome_sequence
    String sequence
    String output_file_prefix
  }
  command <<<
    dnase_bias_estimator_py \
      ~{calculates_mer_bias} \
      ~{regions} \
      ~{reads} \
      ~{genome_sequence} \
      ~{sequence} \
      ~{output_file_prefix}
  >>>
  parameter_meta {
    calculates_mer_bias: "Calculates the 6-mer 5' insertion bias for a NGS dataset"
    regions: "BED file of the regions you want to exclude from\\ncalculating the bias. This is usually the DHSs."
    reads: "The sorted, indexed BAM file containing the DNase-seq data"
    genome_sequence: "The sorted, indexed FASTA file containing the genome"
    sequence: "genome_size      The .chrom.sizes file containing chromosome sizes generated"
    output_file_prefix: "output file prefix to write the observed/expected ratios to\\n(will append .txt and .pickle)"
  }
  output {
    File out_stdout = stdout()
  }
}