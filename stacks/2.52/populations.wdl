version 1.0

task Populations {
  input {
    Boolean? in_path
    Boolean? in_vcf
    Boolean? out_path
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
    Boolean? no_hap_exports
    Boolean? fast_a_samples_raw
    Boolean? map_type
    Boolean? map_format
    Boolean? verbose
    Boolean? log_fst_comp
  }
  command <<<
    populations \
      ~{true="--in-path" false="" in_path} \
      ~{true="--in-vcf" false="" in_vcf} \
      ~{true="--out-path" false="" out_path} \
      ~{true="--popmap" false="" pop_map} \
      ~{true="--threads" false="" threads} \
      ~{true="--batch-size" false="" batch_size} \
      ~{true="--min-populations" false="" min_populations} \
      ~{true="--min-samples-per-pop" false="" min_samples_per_pop} \
      ~{true="--min-samples-overall" false="" min_samples_overall} \
      ~{true="--filter-haplotype-wise" false="" filter_haplotype_wise} \
      ~{true="--min-maf" false="" min_maf} \
      ~{true="--min-mac" false="" min_mac} \
      ~{true="--max-obs-het" false="" max_obs_het} \
      ~{true="--write-single-snp" false="" write_single_snp} \
      ~{true="--write-random-snp" false="" write_random_snp} \
      ~{true="--blacklist" false="" blacklist} \
      ~{true="--whitelist" false="" whitelist} \
      ~{true="--renz" false="" renz} \
      ~{true="--merge-sites" false="" merge_sites} \
      ~{true="--merge-prune-lim" false="" merge_prune_lim} \
      ~{true="--hwe" false="" h_we} \
      ~{true="--fstats" false="" f_stats} \
      ~{true="--fst-correction" false="" fst_correction} \
      ~{true="--p-value-cutoff" false="" p_value_cut_off} \
      ~{true="--sigma" false="" sigma} \
      ~{true="--bootstrap" false="" bootstrap} \
      ~{true="--bootstrap-reps" false="" bootstrap_reps} \
      ~{true="--bootstrap-pifis" false="" bootstrap_pif_is} \
      ~{true="--bootstrap-fst" false="" bootstrap_fst} \
      ~{true="--bootstrap-div" false="" bootstrap_div} \
      ~{true="--bootstrap-phist" false="" bootstrap_p_hist} \
      ~{true="--bootstrap-wl" false="" bootstrap_wl} \
      ~{true="--ordered-export" false="" ordered_export} \
      ~{true="--fasta-loci" false="" fast_a_loci} \
      ~{true="--fasta-samples" false="" fast_a_samples} \
      ~{true="--vcf" false="" vcf} \
      ~{true="--genepop" false="" gene_pop} \
      ~{true="--structure" false="" structure} \
      ~{true="--radpainter" false="" rad_painter} \
      ~{true="--plink" false="" plink} \
      ~{true="--hzar" false="" hz_ar} \
      ~{true="--phylip" false="" phylip} \
      ~{true="--phylip-var" false="" phylip_var} \
      ~{true="--phylip-var-all" false="" phylip_var_all} \
      ~{true="--treemix" false="" tree_mix} \
      ~{true="--no-hap-exports" false="" no_hap_exports} \
      ~{true="--fasta-samples-raw" false="" fast_a_samples_raw} \
      ~{true="--map-type" false="" map_type} \
      ~{true="--map-format" false="" map_format} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--log-fst-comp" false="" log_fst_comp}
  >>>
  parameter_meta {
    in_path: ": path to a directory containing Stacks ouput files."
    in_vcf: ": path to a standalone input VCF file."
    out_path: ": path to a directory where to write the output files. (Required by -V; otherwise defaults to value of -P.)"
    pop_map: ": path to a population map. (Format is 'SAMPLE1 \t POP1 \n SAMPLE2 ...'.)"
    threads: ": number of threads to run in parallel sections of code."
    batch_size: "[int]: the number of loci to process in a batch (default: 10,000 in de novo mode; in reference mode, one chromosome per batch). Increase to speed analysis, uses more memory, decrease to save memory)."
    min_populations: "[int]: minimum number of populations a locus must be present in to process a locus."
    min_samples_per_pop: "[float]: minimum percentage of individuals in a population required to process a locus for that population."
    min_samples_overall: "[float]: minimum percentage of individuals across populations required to process a locus."
    filter_haplotype_wise: ": apply the above filters haplotype wise (unshared SNPs will be pruned to reduce haplotype-wise missing data)."
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
    no_hap_exports: ": omit haplotype outputs."
    fast_a_samples_raw: ": output all haplotypes observed in each sample, for each locus, in FASTA format."
    map_type: ": genetic map type to write. 'CP', 'DH', 'F2', and 'BC1' are the currently supported map types."
    map_format: ": mapping program format to write, 'joinmap', 'onemap', and 'rqtl' are currently supported."
    verbose: ": turn on additional logging."
    log_fst_comp: ": log components of Fst/Phi_st calculations to a file."
  }
}