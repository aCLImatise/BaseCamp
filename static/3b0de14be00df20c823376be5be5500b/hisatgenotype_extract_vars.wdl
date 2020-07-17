version 1.0

task HisatgenotypeExtractVars.py {
  input {
    String? base
    String? locus_list
    Int? inter_gap
    Int? intra_gap
    Boolean? whole_haplotype
    Int? min_var_freq
    String? ext_seq
    Boolean? left_shift
    Boolean? no_partial
    Boolean? verbose
  }
  command <<<
    hisatgenotype_extract_vars.py \
      ~{if defined(base) then ("--base " +  '"' + base + '"') else ""} \
      ~{if defined(locus_list) then ("--locus-list " +  '"' + locus_list + '"') else ""} \
      ~{if defined(inter_gap) then ("--inter-gap " +  '"' + inter_gap + '"') else ""} \
      ~{if defined(intra_gap) then ("--intra-gap " +  '"' + intra_gap + '"') else ""} \
      ~{true="--whole-haplotype" false="" whole_haplotype} \
      ~{if defined(min_var_freq) then ("--min-var-freq " +  '"' + min_var_freq + '"') else ""} \
      ~{if defined(ext_seq) then ("--ext-seq " +  '"' + ext_seq + '"') else ""} \
      ~{true="--leftshift" false="" left_shift} \
      ~{true="--no-partial" false="" no_partial} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    base: "base filename for backbone sequence, variants, and linking info (Default: hla)"
    locus_list: "A comma-separated list of gene names (default: empty, all genes)"
    inter_gap: "Maximum distance for variants to be in the same haplotype (default: 30)"
    intra_gap: "Break a haplotype into several haplotypes (default: 50)"
    whole_haplotype: "Include partial alleles (e.g. A_nuc.fasta)"
    min_var_freq: "Exclude variants whose freq is below than this value in percentage (Default: 0.0)"
    ext_seq: "Length of extra sequences flanking backbone sequences (Default: 0)"
    left_shift: "Shift deletions to the leftmost"
    no_partial: "Exclude partial alleles, exon-only sequences in HLA"
    verbose: "also print some statistics to stderr"
  }
}