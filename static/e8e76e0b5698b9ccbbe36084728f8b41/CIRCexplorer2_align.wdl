version 1.0

task CIRCexplorer2Align {
  input {
    String? gtf
    String? genome
    String? bowtie_one
    String? bowtie_two
    String? thread
    String? fast_q
    String? output_directory
    String? bed
    Boolean? bw
    Boolean? scale
    Boolean? skip_top_hat
    Boolean? skip_top_hat_fusion
  }
  command <<<
    CIRCexplorer2 align \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(bowtie_one) then ("--bowtie1 " +  '"' + bowtie_one + '"') else ""} \
      ~{if defined(bowtie_two) then ("--bowtie2 " +  '"' + bowtie_two + '"') else ""} \
      ~{if defined(thread) then ("--thread " +  '"' + thread + '"') else ""} \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(output_directory) then ("--output " +  '"' + output_directory + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{true="--bw" false="" bw} \
      ~{true="--scale" false="" scale} \
      ~{true="--skip-tophat" false="" skip_top_hat} \
      ~{true="--skip-tophat-fusion" false="" skip_top_hat_fusion}
  >>>
  parameter_meta {
    gtf: "Annotation GTF file."
    genome: "Genome fasta file."
    bowtie_one: "Index files for Bowtie1 (used for TopHat-Fusion)."
    bowtie_two: "Index files for Bowtie2 (used for TopHat2)."
    thread: "Running threads. [default: 10]"
    fast_q: "Input file."
    output_directory: "Output directory. [default: alignment]"
    bed: "Output file. [default: back_spliced_junction.bed]"
    bw: "Create BigWig file."
    scale: "Scale to HPB."
    skip_top_hat: "Skip TopHat mapping."
    skip_top_hat_fusion: "Skip TopHat-Fusion mapping."
  }
}