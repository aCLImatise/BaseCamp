version 1.0

task Populations {
  input {
    Boolean? in_path
    Boolean? in_vcf
    File? out_path
    Boolean? pop_map
    Boolean? threads
    Boolean? batch_size
    Boolean? min_populations
    Boolean? min_samples_per_pop
    Boolean? min_samples_overall
    Boolean? filter_haplotype_wise
    Boolean? min_maf
    Boolean? min_mac
    Boolean? max_obs_het
    Boolean? write_single_snp
    Boolean? write_random_snp
    Boolean? blacklist
    Boolean? whitelist
    Boolean? renz
    Boolean? merge_sites
    Boolean? merge_prune_lim
    Boolean? h_we
    Boolean? f_stats
    Boolean? fst_correction
    Boolean? p_value_cut_off
    Boolean? smooth
    Boolean? smooth_f_stats
    Boolean? smooth_pop_stats
    Boolean? sigma
    Boolean? bootstrap
    Boolean? bootstrap_reps
    Boolean? bootstrap_pif_is
    Boolean? bootstrap_fst
    Boolean? bootstrap_div
    Boolean? bootstrap_p_hist
    Boolean? bootstrap_wl
    Boolean? ordered_export
    Boolean? fast_a_loci
    Boolean? fast_a_samples
    Boolean? vcf
    Boolean? gene_pop
    Boolean? structure
    Boolean? rad_painter
    Boolean? plink
    Boolean? hz_ar
    Boolean? phylip
    Boolean? phylip_var
    Boolean? phylip_var_all
    Boolean? tree_mix
    File? gtf
    Boolean? no_hap_exports
    Boolean? fast_a_samples_raw
    Boolean? map_type
    Boolean? map_format
    Boolean? verbose
    Boolean? log_fst_comp
  }
  command <<<
    populations \
      ~{if (in_path) then "--in-path" else ""} \
      ~{if (in_vcf) then "--in-vcf" else ""} \
      ~{if (out_path) then "--out-path" else ""} \
      ~{if (pop_map) then "--popmap" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (batch_size) then "--batch-size" else ""} \
      ~{if (min_populations) then "--min-populations" else ""} \
      ~{if (min_samples_per_pop) then "--min-samples-per-pop" else ""} \
      ~{if (min_samples_overall) then "--min-samples-overall" else ""} \
      ~{if (filter_haplotype_wise) then "--filter-haplotype-wise" else ""} \
      ~{if (min_maf) then "--min-maf" else ""} \
      ~{if (min_mac) then "--min-mac" else ""} \
      ~{if (max_obs_het) then "--max-obs-het" else ""} \
      ~{if (write_single_snp) then "--write-single-snp" else ""} \
      ~{if (write_random_snp) then "--write-random-snp" else ""} \
      ~{if (blacklist) then "--blacklist" else ""} \
      ~{if (whitelist) then "--whitelist" else ""} \
      ~{if (renz) then "--renz" else ""} \
      ~{if (merge_sites) then "--merge-sites" else ""} \
      ~{if (merge_prune_lim) then "--merge-prune-lim" else ""} \
      ~{if (h_we) then "--hwe" else ""} \
      ~{if (f_stats) then "--fstats" else ""} \
      ~{if (fst_correction) then "--fst-correction" else ""} \
      ~{if (p_value_cut_off) then "--p-value-cutoff" else ""} \
      ~{if (smooth) then "--smooth" else ""} \
      ~{if (smooth_f_stats) then "--smooth-fstats" else ""} \
      ~{if (smooth_pop_stats) then "--smooth-popstats" else ""} \
      ~{if (sigma) then "--sigma" else ""} \
      ~{if (bootstrap) then "--bootstrap" else ""} \
      ~{if (bootstrap_reps) then "--bootstrap-reps" else ""} \
      ~{if (bootstrap_pif_is) then "--bootstrap-pifis" else ""} \
      ~{if (bootstrap_fst) then "--bootstrap-fst" else ""} \
      ~{if (bootstrap_div) then "--bootstrap-div" else ""} \
      ~{if (bootstrap_p_hist) then "--bootstrap-phist" else ""} \
      ~{if (bootstrap_wl) then "--bootstrap-wl" else ""} \
      ~{if (ordered_export) then "--ordered-export" else ""} \
      ~{if (fast_a_loci) then "--fasta-loci" else ""} \
      ~{if (fast_a_samples) then "--fasta-samples" else ""} \
      ~{if (vcf) then "--vcf" else ""} \
      ~{if (gene_pop) then "--genepop" else ""} \
      ~{if (structure) then "--structure" else ""} \
      ~{if (rad_painter) then "--radpainter" else ""} \
      ~{if (plink) then "--plink" else ""} \
      ~{if (hz_ar) then "--hzar" else ""} \
      ~{if (phylip) then "--phylip" else ""} \
      ~{if (phylip_var) then "--phylip-var" else ""} \
      ~{if (phylip_var_all) then "--phylip-var-all" else ""} \
      ~{if (tree_mix) then "--treemix" else ""} \
      ~{if (gtf) then "--gtf" else ""} \
      ~{if (no_hap_exports) then "--no-hap-exports" else ""} \
      ~{if (fast_a_samples_raw) then "--fasta-samples-raw" else ""} \
      ~{if (map_type) then "--map-type" else ""} \
      ~{if (map_format) then "--map-format" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (log_fst_comp) then "--log-fst-comp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/stacks:2.55--he513fc3_0"
  }
  parameter_meta {
    in_path: ": path to a directory containing Stacks ouput files."
    in_vcf: ": path to a standalone input VCF file."
    out_path: ": path to a directory where to write the output files. (Required by -V; otherwise defaults to value of -P.)"
    pop_map: ": path to a population map. (Format is 'SAMPLE1 \\t POP1 \\n SAMPLE2 ...'.)"
    threads: ": number of threads to run in parallel sections of code."
    batch_size: "[int]: the number of loci to process in a batch (default: 10,000 in de novo mode; in reference mode, one chromosome\\nper batch). Increase to speed analysis, uses more memory, decrease to save memory)."
    min_populations: "[int]: minimum number of populations a locus must be present in to process a locus."
    min_samples_per_pop: "[float]: minimum percentage of individuals in a population required to process a locus for that population."
    min_samples_overall: "[float]: minimum percentage of individuals across populations required to process a locus."
    filter_haplotype_wise: ": apply the above filters haplotype wise\\n(unshared SNPs will be pruned to reduce haplotype-wise missing data)."
    min_maf: "[float]: specify a minimum minor allele frequency required to process a SNP (0 < min_maf < 0.5)."
    min_mac: "[int]: specify a minimum minor allele count required to process a SNP."
    max_obs_het: "[float]: specify a maximum observed heterozygosity required to process a SNP."
    write_single_snp: ": restrict data analysis to only the first SNP per locus (implies --no-haps)."
    write_random_snp: ": restrict data analysis to one random SNP per locus (implies --no-haps)."
    blacklist: ": path to a file containing Blacklisted markers to be excluded from the export."
    whitelist: ": path to a file containing Whitelisted markers to include in the export."
    renz: ": restriction enzyme name."
    merge_sites: ": merge loci that were produced from the same restriction enzyme cutsite (requires reference-aligned data)."
    merge_prune_lim: ": when merging adjacent loci, if at least X% samples posses both loci prune the remaining samples out of the analysis."
    h_we: ": calculate divergence from Hardy-Weinberg equilibrium for each locus."
    f_stats: ": enable SNP and haplotype-based F statistics."
    fst_correction: ": specify a p-value correction to be applied to Fst values based on a Fisher's exact test. Default: off."
    p_value_cut_off: "[float]: maximum p-value to keep an Fst measurement. Default: 0.05. (Also used as base for Bonferroni correction.)"
    smooth: ": enable kernel-smoothed Pi, Fis, Fst, Fst', and Phi_st calculations."
    smooth_f_stats: ": enable kernel-smoothed Fst, Fst', and Phi_st calculations."
    smooth_pop_stats: ": enable kernel-smoothed Pi and Fis calculations.\\n(Note: turning on smoothing implies --ordered-export.)"
    sigma: "[int]: standard deviation of the kernel smoothing weight distribution. Default 150kb."
    bootstrap: ": turn on boostrap resampling for all smoothed statistics."
    bootstrap_reps: "[int]: number of bootstrap resamplings to calculate (default 100)."
    bootstrap_pif_is: ": turn on boostrap resampling for smoothed SNP-based Pi and Fis calculations."
    bootstrap_fst: ": turn on boostrap resampling for smoothed Fst calculations based on pairwise population comparison of SNPs."
    bootstrap_div: ": turn on boostrap resampling for smoothed haplotype diveristy and gene diversity calculations based on haplotypes."
    bootstrap_p_hist: ": turn on boostrap resampling for smoothed Phi_st calculations based on haplotypes."
    bootstrap_wl: "[path]: only bootstrap loci contained in this whitelist."
    ordered_export: ": if data is reference aligned, exports will be ordered; only a single representative of each overlapping site."
    fast_a_loci: ": output locus consensus sequences in FASTA format."
    fast_a_samples: ": output the sequences of the two haplotypes of each (diploid) sample, for each locus, in FASTA format."
    vcf: ": output SNPs and haplotypes in Variant Call Format (VCF)."
    gene_pop: ": output SNPs and haplotypes in GenePop format."
    structure: ": output results in Structure format."
    rad_painter: ": output results in fineRADstructure/RADpainter format."
    plink: ": output genotypes in PLINK format."
    hz_ar: ": output genotypes in Hybrid Zone Analysis using R (HZAR) format."
    phylip: ": output nucleotides that are fixed-within, and variant among populations in Phylip format for phylogenetic tree construction."
    phylip_var: ": include variable sites in the phylip output encoded using IUPAC notation."
    phylip_var_all: ": include all sequence as well as variable sites in the phylip output encoded using IUPAC notation."
    tree_mix: ": output SNPs in a format useable for the TreeMix program (Pickrell and Pritchard)."
    gtf: ": output locus positions in a GTF annotation file."
    no_hap_exports: ": omit haplotype outputs."
    fast_a_samples_raw: ": output all haplotypes observed in each sample, for each locus, in FASTA format."
    map_type: ": genetic map type to write. 'CP', 'DH', 'F2', and 'BC1' are the currently supported map types."
    map_format: ": mapping program format to write, 'joinmap', 'onemap', and 'rqtl' are currently supported."
    verbose: ": turn on additional logging."
    log_fst_comp: ": log components of Fst/Phi_st calculations to a file."
  }
  output {
    File out_stdout = stdout()
    File out_out_path = "${in_out_path}"
    File out_gtf = "${in_gtf}"
  }
}