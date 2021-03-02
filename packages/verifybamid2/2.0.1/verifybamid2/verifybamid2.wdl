version 1.0

task Verifybamid2 {
  input {
    Boolean? bam_file
    Boolean? pile_up_file
    Boolean? reference
    Boolean? svd_prefix
    Boolean? var_output
    Boolean? within_ancestry
    Boolean? disable_sanity_check
    Boolean? num_pc
    Boolean? fix_pc
    Boolean? fix_alpha
    Boolean? known_af
    Boolean? num_thread
    Boolean? seed
    Boolean? epsilon
    Boolean? output_pile_up
    Boolean? verbose
    Boolean? ref_vcf
    Boolean? min_bq
    Boolean? min_mq
    Boolean? adjust_mq
    Boolean? max_depth
    Boolean? no_orphans
    Boolean? incl_flags
    Boolean? excl_flags
    Boolean? ud_path
    Boolean? mean_path
    Boolean? bed_path
  }
  command <<<
    verifybamid2 \
      ~{if (bam_file) then "--BamFile" else ""} \
      ~{if (pile_up_file) then "--PileupFile" else ""} \
      ~{if (reference) then "--Reference" else ""} \
      ~{if (svd_prefix) then "--SVDPrefix" else ""} \
      ~{if (var_output) then "--Output" else ""} \
      ~{if (within_ancestry) then "--WithinAncestry" else ""} \
      ~{if (disable_sanity_check) then "--DisableSanityCheck" else ""} \
      ~{if (num_pc) then "--NumPC" else ""} \
      ~{if (fix_pc) then "--FixPC" else ""} \
      ~{if (fix_alpha) then "--FixAlpha" else ""} \
      ~{if (known_af) then "--KnownAF" else ""} \
      ~{if (num_thread) then "--NumThread" else ""} \
      ~{if (seed) then "--Seed" else ""} \
      ~{if (epsilon) then "--Epsilon" else ""} \
      ~{if (output_pile_up) then "--OutputPileup" else ""} \
      ~{if (verbose) then "--Verbose" else ""} \
      ~{if (ref_vcf) then "--RefVCF" else ""} \
      ~{if (min_bq) then "--min-BQ" else ""} \
      ~{if (min_mq) then "--min-MQ" else ""} \
      ~{if (adjust_mq) then "--adjust-MQ" else ""} \
      ~{if (max_depth) then "--max-depth" else ""} \
      ~{if (no_orphans) then "--no-orphans" else ""} \
      ~{if (incl_flags) then "--incl-flags" else ""} \
      ~{if (excl_flags) then "--excl-flags" else ""} \
      ~{if (ud_path) then "--UDPath" else ""} \
      ~{if (mean_path) then "--MeanPath" else ""} \
      ~{if (bed_path) then "--BedPath" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/verifybamid2:2.0.1--h32f71e1_0"
  }
  parameter_meta {
    bam_file: "[STR: Empty]        : [String] Bam or Cram file for the sample[Required if --PileupFile not specified]"
    pile_up_file: "[STR: Empty]        : [String] Pileup file for the sample[Required if --BamFile not specified]"
    reference: "[STR: Empty]        : [String] Reference file[Required]"
    svd_prefix: "[STR: Empty]        : [String] SVD related files prefix(normally shared by .UD, .mu and .bed files)[Required]"
    var_output: "[STR: result]       : [String] Prefix of output files[optional]"
    within_ancestry: "[FLG: OFF]          : [Bool] Enabling withinAncestry assume target sample and contamination source are from the same populations,[default:BetweenAncestry] otherwise"
    disable_sanity_check: "[FLG: OFF]          : [Bool] Disable marker quality sanity check(no marker filtering)[default:false]"
    num_pc: "[INT: 2]            : [Int] Set number of PCs to infer Allele Frequency[optional]"
    fix_pc: "[STR: Empty]        : [String] Input fixed PCs to estimate Alpha[format PC1:PC2:PC3...]"
    fix_alpha: "[FLT: -1.0e+00]     : [Double] Input fixed Alpha to estimate PC coordinates"
    known_af: "[STR: Empty]        : [String] known allele frequency file (chr  pos     freq)[Optional]"
    num_thread: "[INT: 4]            : [Int] Set number of threads in likelihood calculation[default:4]"
    seed: "[INT: 12345]        : [Int] Random number seed[default:12345]"
    epsilon: "[FLT: 1.0e-08]      : [Double] Minimization procedure convergence threshold, usually a trade-off bettween accuracy and running time[default:1e-10]"
    output_pile_up: "[FLG: OFF]          : [Bool] If output temp pileup file"
    verbose: "[FLG: OFF]          : [Bool] If print the progress of the method on the screen"
    ref_vcf: "[STR: Empty]        : [String] VCF file from which to extract reference panel's genotype matrix[Required if no SVD files available]"
    min_bq: "[INT: 13]           : [Int] skip bases with baseQ/BAQ smaller than min-BQ"
    min_mq: "[INT: 2]            : [Int] skip alignments with mapQ smaller than min-MQ"
    adjust_mq: "[INT: 40]           : [Int] adjust mapping quality; recommended:50, disable:0"
    max_depth: "[INT: 8000]         : [Int] max per-file depth"
    no_orphans: "[FLG: OFF]          : [Bool] do not use anomalous read pairs"
    incl_flags: "[INT: 1040]         : [Int] required flags: skip reads with mask bits unset"
    excl_flags: "[INT: 1796]         : [Int] filter flags: skip reads with mask bits set"
    ud_path: "[STR: Empty]        : [String] UD matrix file from SVD result of genotype matrix"
    mean_path: "[STR: Empty]        : [String] Mean matrix file of genotype matrix"
    bed_path: "[STR: Empty]        : [String] Bed file for markers used in this analysis,1 based pos(chr        pos-1   pos     refAllele       altAllele)[Required]"
  }
  output {
    File out_stdout = stdout()
  }
}