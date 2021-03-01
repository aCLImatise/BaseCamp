version 1.0

task CIRCexplorer2Align {
  input {
    File? gtf
    File? genome
    Int? bowtie_one
    Int? bowtie_two
    Int? thread
    File? fast_q
    Directory? output_directory
    File? bed
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
      ~{if (bw) then "--bw" else ""} \
      ~{if (scale) then "--scale" else ""} \
      ~{if (skip_top_hat) then "--skip-tophat" else ""} \
      ~{if (skip_top_hat_fusion) then "--skip-tophat-fusion" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gtf: "Annotation GTF file."
    genome: "Genome fasta file."
    bowtie_one: "Index files for Bowtie1 (used for TopHat-Fusion)."
    bowtie_two: "Index files for Bowtie2 (used for TopHat2)."
    thread: "Running threads. [default: 10]"
    fast_q: "Input file."
    output_directory: "Output directory. [default: alignment]"
    bed: "Output file.\\n[default: back_spliced_junction.bed]"
    bw: "Create BigWig file."
    scale: "Scale to HPB."
    skip_top_hat: "Skip TopHat mapping."
    skip_top_hat_fusion: "Skip TopHat-Fusion mapping."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
    File out_bed = "${in_bed}"
  }
}