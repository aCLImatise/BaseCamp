version 1.0

task NanopolishVariants {
  input {
    Boolean? verbose
    Boolean? snps
    Boolean? consensus
    Boolean? fix_homopolymers
    Boolean? faster
    String? window
    File? reads
    File? bam
    File? event_bam
    File? genome
    Int? ploidy
    String? methylation_aware
    File? genotype
    File? outfile
    Int? threads
    Int? min_candidate_frequency
    Int? in_del_bias
    Int? min_candidate_depth
    Int? max_haplotypes
    Int? min_flanking_sequence
    Int? max_rounds
    String? candidates
    String? read_group
    File? alternative_base_calls_bam
    Boolean? calculate_all_support
    File? models_fof_n
  }
  command <<<
    nanopolish variants \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (snps) then "--snps" else ""} \
      ~{if (consensus) then "--consensus" else ""} \
      ~{if (fix_homopolymers) then "--fix-homopolymers" else ""} \
      ~{if (faster) then "--faster" else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(event_bam) then ("--event-bam " +  '"' + event_bam + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(ploidy) then ("--ploidy " +  '"' + ploidy + '"') else ""} \
      ~{if defined(methylation_aware) then ("--methylation-aware " +  '"' + methylation_aware + '"') else ""} \
      ~{if defined(genotype) then ("--genotype " +  '"' + genotype + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(min_candidate_frequency) then ("--min-candidate-frequency " +  '"' + min_candidate_frequency + '"') else ""} \
      ~{if defined(in_del_bias) then ("--indel-bias " +  '"' + in_del_bias + '"') else ""} \
      ~{if defined(min_candidate_depth) then ("--min-candidate-depth " +  '"' + min_candidate_depth + '"') else ""} \
      ~{if defined(max_haplotypes) then ("--max-haplotypes " +  '"' + max_haplotypes + '"') else ""} \
      ~{if defined(min_flanking_sequence) then ("--min-flanking-sequence " +  '"' + min_flanking_sequence + '"') else ""} \
      ~{if defined(max_rounds) then ("--max-rounds " +  '"' + max_rounds + '"') else ""} \
      ~{if defined(candidates) then ("--candidates " +  '"' + candidates + '"') else ""} \
      ~{if defined(read_group) then ("--read-group " +  '"' + read_group + '"') else ""} \
      ~{if defined(alternative_base_calls_bam) then ("--alternative-basecalls-bam " +  '"' + alternative_base_calls_bam + '"') else ""} \
      ~{if (calculate_all_support) then "--calculate-all-support" else ""} \
      ~{if defined(models_fof_n) then ("--models-fofn " +  '"' + models_fof_n + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "display verbose output"
    snps: "only call SNPs"
    consensus: "run in consensus calling mode"
    fix_homopolymers: "run the experimental homopolymer caller"
    faster: "minimize compute time while slightly reducing consensus accuracy"
    window: "find variants in window STR (format: <chromsome_name>:<start>-<end>)"
    reads: "the ONT reads are in fasta FILE"
    bam: "the reads aligned to the reference genome are in bam FILE"
    event_bam: "the events aligned to the reference genome are in bam FILE"
    genome: "the reference genome is in FILE"
    ploidy: "the ploidy level of the sequenced genome"
    methylation_aware: "turn on methylation aware polishing and test motifs given in STR (example: -q dcm,dam)"
    genotype: "call genotypes for the variants in the vcf FILE"
    outfile: "write result to FILE [default: stdout]"
    threads: "use NUM threads (default: 1)"
    min_candidate_frequency: "extract candidate variants from the aligned reads when the variant frequency is at least F (default 0.2)"
    in_del_bias: "bias HMM transition parameters to favor insertions (F<1) or deletions (F>1).\\nthis value is automatically set depending on --consensus, but can be manually set if spurious indels are called"
    min_candidate_depth: "extract candidate variants from the aligned reads when the depth is at least D (default: 20)"
    max_haplotypes: "consider at most N haplotype combinations (default: 1000)"
    min_flanking_sequence: "distance from alignment end to calculate variants (default: 30)"
    max_rounds: "perform N rounds of consensus sequence improvement (default: 50)"
    candidates: "read variant candidates from VCF, rather than discovering them from aligned reads"
    read_group: "only use alignments with read group tag RG"
    alternative_base_calls_bam: "if an alternative basecaller was used that does not output event annotations\\nthen use basecalled sequences from FILE. The signal-level events will still be taken from the -b bam."
    calculate_all_support: "when making a call, also calculate the support of the 3 other possible bases"
    models_fof_n: "read alternative k-mer models from FILE"
  }
  output {
    File out_stdout = stdout()
    File out_alternative_base_calls_bam = "${in_alternative_base_calls_bam}"
  }
}