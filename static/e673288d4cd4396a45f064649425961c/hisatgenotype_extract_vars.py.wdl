version 1.0

task HisatgenotypeExtractVarspy {
  input {
    File? base
    String? locus_list
    Int? inter_gap
    Int? intra_gap
    Boolean? whole_haplotype
    Int? min_var_freq
    Int? ext_seq
    Boolean? left_shift
    Boolean? no_partial
    Boolean? verbose
  }
  command <<<
    hisatgenotype_extract_vars_py \
      ~{if defined(base) then ("--base " +  '"' + base + '"') else ""} \
      ~{if defined(locus_list) then ("--locus-list " +  '"' + locus_list + '"') else ""} \
      ~{if defined(inter_gap) then ("--inter-gap " +  '"' + inter_gap + '"') else ""} \
      ~{if defined(intra_gap) then ("--intra-gap " +  '"' + intra_gap + '"') else ""} \
      ~{if (whole_haplotype) then "--whole-haplotype" else ""} \
      ~{if defined(min_var_freq) then ("--min-var-freq " +  '"' + min_var_freq + '"') else ""} \
      ~{if defined(ext_seq) then ("--ext-seq " +  '"' + ext_seq + '"') else ""} \
      ~{if (left_shift) then "--leftshift" else ""} \
      ~{if (no_partial) then "--no-partial" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    base: "base filename for backbone sequence, variants, and\\nlinking info (Default: hla)"
    locus_list: "A comma-separated list of gene names (default: empty,\\nall genes)"
    inter_gap: "Maximum distance for variants to be in the same\\nhaplotype (default: 30)"
    intra_gap: "Break a haplotype into several haplotypes (default:\\n50)"
    whole_haplotype: "Include partial alleles (e.g. A_nuc.fasta)"
    min_var_freq: "Exclude variants whose freq is below than this value\\nin percentage (Default: 0.0)"
    ext_seq: "Length of extra sequences flanking backbone sequences\\n(Default: 0)"
    left_shift: "Shift deletions to the leftmost"
    no_partial: "Exclude partial alleles, exon-only sequences in HLA"
    verbose: "also print some statistics to stderr"
  }
  output {
    File out_stdout = stdout()
  }
}