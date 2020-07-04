version 1.0

task KallistoQuant {
  input {
    Boolean? bias
    Int? seed
    Boolean? plain_text
    Boolean? fusion
    Boolean? single
    Boolean? single_overhang
    Boolean? fr_stranded
    Boolean? rf_stranded
    Boolean? pseudo_bam
    Boolean? genome_bam
    Boolean? verbose
    String? arguments
    String fast_q_files
  }
  command <<<
    kallisto quant \
      ~{arguments} \
      ~{fast_q_files} \
      ~{true="--bias" false="" bias} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="--plaintext" false="" plain_text} \
      ~{true="--fusion" false="" fusion} \
      ~{true="--single" false="" single} \
      ~{true="--single-overhang" false="" single_overhang} \
      ~{true="--fr-stranded" false="" fr_stranded} \
      ~{true="--rf-stranded" false="" rf_stranded} \
      ~{true="--pseudobam" false="" pseudo_bam} \
      ~{true="--genomebam" false="" genome_bam} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    bias: "Perform sequence based bias correction"
    seed: "Seed for the bootstrap sampling (default: 42)"
    plain_text: "Output plaintext instead of HDF5"
    fusion: "Search for fusions for Pizzly"
    single: "Quantify single-end reads"
    single_overhang: "Include reads where unobserved rest of fragment is predicted to lie outside a transcript"
    fr_stranded: "Strand specific reads, first read forward"
    rf_stranded: "Strand specific reads, first read reverse"
    pseudo_bam: "Save pseudoalignments to transcriptome to BAM file"
    genome_bam: "Project pseudoalignments to genome sorted BAM file"
    verbose: "Print out progress information every 1M proccessed reads"
    arguments: ""
    fast_q_files: ""
  }
}