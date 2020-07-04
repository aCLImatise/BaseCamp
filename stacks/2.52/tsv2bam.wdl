version 1.0

task Tsv2bam {
  input {
    Boolean? in_dir
    Boolean? pop_map
    Boolean? sample
    Boolean? pe_reads_dir
    Boolean? number_use_default
  }
  command <<<
    tsv2bam \
      ~{true="--in-dir" false="" in_dir} \
      ~{true="--popmap" false="" pop_map} \
      ~{true="--sample" false="" sample} \
      ~{true="--pe-reads-dir" false="" pe_reads_dir} \
      ~{true="-t" false="" number_use_default}
  >>>
  parameter_meta {
    in_dir: ": input directory."
    pop_map: ": population map."
    sample: ": name of one sample."
    pe_reads_dir: ": directory where to find the paired-end reads files (in fastq/fasta/bam (gz) format)."
    number_use_default: ": number of threads to use (default: 1)."
  }
}