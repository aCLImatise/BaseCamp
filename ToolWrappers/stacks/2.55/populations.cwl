class: CommandLineTool
id: populations.cwl
inputs:
- id: in_in_path
  doc: ': path to a directory containing Stacks ouput files.'
  type: boolean?
  inputBinding:
    prefix: --in-path
- id: in_in_vcf
  doc: ': path to a standalone input VCF file.'
  type: boolean?
  inputBinding:
    prefix: --in-vcf
- id: in_out_path
  doc: ': path to a directory where to write the output files. (Required by -V; otherwise
    defaults to value of -P.)'
  type: File?
  inputBinding:
    prefix: --out-path
- id: in_pop_map
  doc: ": path to a population map. (Format is 'SAMPLE1 \\t POP1 \\n SAMPLE2 ...'.)"
  type: boolean?
  inputBinding:
    prefix: --popmap
- id: in_threads
  doc: ': number of threads to run in parallel sections of code.'
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_batch_size
  doc: "[int]: the number of loci to process in a batch (default: 10,000 in de novo\
    \ mode; in reference mode, one chromosome\nper batch). Increase to speed analysis,\
    \ uses more memory, decrease to save memory)."
  type: boolean?
  inputBinding:
    prefix: --batch-size
- id: in_min_populations
  doc: '[int]: minimum number of populations a locus must be present in to process
    a locus.'
  type: boolean?
  inputBinding:
    prefix: --min-populations
- id: in_min_samples_per_pop
  doc: '[float]: minimum percentage of individuals in a population required to process
    a locus for that population.'
  type: boolean?
  inputBinding:
    prefix: --min-samples-per-pop
- id: in_min_samples_overall
  doc: '[float]: minimum percentage of individuals across populations required to
    process a locus.'
  type: boolean?
  inputBinding:
    prefix: --min-samples-overall
- id: in_filter_haplotype_wise
  doc: ": apply the above filters haplotype wise\n(unshared SNPs will be pruned to\
    \ reduce haplotype-wise missing data)."
  type: boolean?
  inputBinding:
    prefix: --filter-haplotype-wise
- id: in_min_maf
  doc: '[float]: specify a minimum minor allele frequency required to process a SNP
    (0 < min_maf < 0.5).'
  type: boolean?
  inputBinding:
    prefix: --min-maf
- id: in_min_mac
  doc: '[int]: specify a minimum minor allele count required to process a SNP.'
  type: boolean?
  inputBinding:
    prefix: --min-mac
- id: in_max_obs_het
  doc: '[float]: specify a maximum observed heterozygosity required to process a SNP.'
  type: boolean?
  inputBinding:
    prefix: --max-obs-het
- id: in_write_single_snp
  doc: ': restrict data analysis to only the first SNP per locus (implies --no-haps).'
  type: boolean?
  inputBinding:
    prefix: --write-single-snp
- id: in_write_random_snp
  doc: ': restrict data analysis to one random SNP per locus (implies --no-haps).'
  type: boolean?
  inputBinding:
    prefix: --write-random-snp
- id: in_blacklist
  doc: ': path to a file containing Blacklisted markers to be excluded from the export.'
  type: boolean?
  inputBinding:
    prefix: --blacklist
- id: in_whitelist
  doc: ': path to a file containing Whitelisted markers to include in the export.'
  type: boolean?
  inputBinding:
    prefix: --whitelist
- id: in_renz
  doc: ': restriction enzyme name.'
  type: boolean?
  inputBinding:
    prefix: --renz
- id: in_merge_sites
  doc: ': merge loci that were produced from the same restriction enzyme cutsite (requires
    reference-aligned data).'
  type: boolean?
  inputBinding:
    prefix: --merge-sites
- id: in_merge_prune_lim
  doc: ': when merging adjacent loci, if at least X% samples posses both loci prune
    the remaining samples out of the analysis.'
  type: boolean?
  inputBinding:
    prefix: --merge-prune-lim
- id: in_h_we
  doc: ': calculate divergence from Hardy-Weinberg equilibrium for each locus.'
  type: boolean?
  inputBinding:
    prefix: --hwe
- id: in_f_stats
  doc: ': enable SNP and haplotype-based F statistics.'
  type: boolean?
  inputBinding:
    prefix: --fstats
- id: in_fst_correction
  doc: ": specify a p-value correction to be applied to Fst values based on a Fisher's\
    \ exact test. Default: off."
  type: boolean?
  inputBinding:
    prefix: --fst-correction
- id: in_p_value_cut_off
  doc: '[float]: maximum p-value to keep an Fst measurement. Default: 0.05. (Also
    used as base for Bonferroni correction.)'
  type: boolean?
  inputBinding:
    prefix: --p-value-cutoff
- id: in_smooth
  doc: ": enable kernel-smoothed Pi, Fis, Fst, Fst', and Phi_st calculations."
  type: boolean?
  inputBinding:
    prefix: --smooth
- id: in_smooth_f_stats
  doc: ": enable kernel-smoothed Fst, Fst', and Phi_st calculations."
  type: boolean?
  inputBinding:
    prefix: --smooth-fstats
- id: in_smooth_pop_stats
  doc: ": enable kernel-smoothed Pi and Fis calculations.\n(Note: turning on smoothing\
    \ implies --ordered-export.)"
  type: boolean?
  inputBinding:
    prefix: --smooth-popstats
- id: in_sigma
  doc: '[int]: standard deviation of the kernel smoothing weight distribution. Default
    150kb.'
  type: boolean?
  inputBinding:
    prefix: --sigma
- id: in_bootstrap
  doc: ': turn on boostrap resampling for all smoothed statistics.'
  type: boolean?
  inputBinding:
    prefix: --bootstrap
- id: in_bootstrap_reps
  doc: '[int]: number of bootstrap resamplings to calculate (default 100).'
  type: boolean?
  inputBinding:
    prefix: --bootstrap-reps
- id: in_bootstrap_pif_is
  doc: ': turn on boostrap resampling for smoothed SNP-based Pi and Fis calculations.'
  type: boolean?
  inputBinding:
    prefix: --bootstrap-pifis
- id: in_bootstrap_fst
  doc: ': turn on boostrap resampling for smoothed Fst calculations based on pairwise
    population comparison of SNPs.'
  type: boolean?
  inputBinding:
    prefix: --bootstrap-fst
- id: in_bootstrap_div
  doc: ': turn on boostrap resampling for smoothed haplotype diveristy and gene diversity
    calculations based on haplotypes.'
  type: boolean?
  inputBinding:
    prefix: --bootstrap-div
- id: in_bootstrap_p_hist
  doc: ': turn on boostrap resampling for smoothed Phi_st calculations based on haplotypes.'
  type: boolean?
  inputBinding:
    prefix: --bootstrap-phist
- id: in_bootstrap_wl
  doc: '[path]: only bootstrap loci contained in this whitelist.'
  type: boolean?
  inputBinding:
    prefix: --bootstrap-wl
- id: in_ordered_export
  doc: ': if data is reference aligned, exports will be ordered; only a single representative
    of each overlapping site.'
  type: boolean?
  inputBinding:
    prefix: --ordered-export
- id: in_fast_a_loci
  doc: ': output locus consensus sequences in FASTA format.'
  type: boolean?
  inputBinding:
    prefix: --fasta-loci
- id: in_fast_a_samples
  doc: ': output the sequences of the two haplotypes of each (diploid) sample, for
    each locus, in FASTA format.'
  type: boolean?
  inputBinding:
    prefix: --fasta-samples
- id: in_vcf
  doc: ': output SNPs and haplotypes in Variant Call Format (VCF).'
  type: boolean?
  inputBinding:
    prefix: --vcf
- id: in_gene_pop
  doc: ': output SNPs and haplotypes in GenePop format.'
  type: boolean?
  inputBinding:
    prefix: --genepop
- id: in_structure
  doc: ': output results in Structure format.'
  type: boolean?
  inputBinding:
    prefix: --structure
- id: in_rad_painter
  doc: ': output results in fineRADstructure/RADpainter format.'
  type: boolean?
  inputBinding:
    prefix: --radpainter
- id: in_plink
  doc: ': output genotypes in PLINK format.'
  type: boolean?
  inputBinding:
    prefix: --plink
- id: in_hz_ar
  doc: ': output genotypes in Hybrid Zone Analysis using R (HZAR) format.'
  type: boolean?
  inputBinding:
    prefix: --hzar
- id: in_phylip
  doc: ': output nucleotides that are fixed-within, and variant among populations
    in Phylip format for phylogenetic tree construction.'
  type: boolean?
  inputBinding:
    prefix: --phylip
- id: in_phylip_var
  doc: ': include variable sites in the phylip output encoded using IUPAC notation.'
  type: boolean?
  inputBinding:
    prefix: --phylip-var
- id: in_phylip_var_all
  doc: ': include all sequence as well as variable sites in the phylip output encoded
    using IUPAC notation.'
  type: boolean?
  inputBinding:
    prefix: --phylip-var-all
- id: in_tree_mix
  doc: ': output SNPs in a format useable for the TreeMix program (Pickrell and Pritchard).'
  type: boolean?
  inputBinding:
    prefix: --treemix
- id: in_gtf
  doc: ': output locus positions in a GTF annotation file.'
  type: File?
  inputBinding:
    prefix: --gtf
- id: in_no_hap_exports
  doc: ': omit haplotype outputs.'
  type: boolean?
  inputBinding:
    prefix: --no-hap-exports
- id: in_fast_a_samples_raw
  doc: ': output all haplotypes observed in each sample, for each locus, in FASTA
    format.'
  type: boolean?
  inputBinding:
    prefix: --fasta-samples-raw
- id: in_map_type
  doc: ": genetic map type to write. 'CP', 'DH', 'F2', and 'BC1' are the currently\
    \ supported map types."
  type: boolean?
  inputBinding:
    prefix: --map-type
- id: in_map_format
  doc: ": mapping program format to write, 'joinmap', 'onemap', and 'rqtl' are currently\
    \ supported."
  type: boolean?
  inputBinding:
    prefix: --map-format
- id: in_verbose
  doc: ': turn on additional logging.'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_log_fst_comp
  doc: ': log components of Fst/Phi_st calculations to a file.'
  type: boolean?
  inputBinding:
    prefix: --log-fst-comp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_path
  doc: ': path to a directory where to write the output files. (Required by -V; otherwise
    defaults to value of -P.)'
  type: File?
  outputBinding:
    glob: $(inputs.in_out_path)
- id: out_gtf
  doc: ': output locus positions in a GTF annotation file.'
  type: File?
  outputBinding:
    glob: $(inputs.in_gtf)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/stacks:2.55--he513fc3_0
cwlVersion: v1.1
baseCommand:
- populations
