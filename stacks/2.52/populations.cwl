class: CommandLineTool
id: populations.cwl
inputs:
- id: in_path
  doc: ': path to a directory containing Stacks ouput files.'
  type: boolean
  inputBinding:
    prefix: --in-path
- id: in_vcf
  doc: ': path to a standalone input VCF file.'
  type: boolean
  inputBinding:
    prefix: --in-vcf
- id: out_path
  doc: ': path to a directory where to write the output files. (Required by -V; otherwise
    defaults to value of -P.)'
  type: boolean
  inputBinding:
    prefix: --out-path
- id: pop_map
  doc: ": path to a population map. (Format is 'SAMPLE1 \\t POP1 \\n SAMPLE2 ...'.)"
  type: boolean
  inputBinding:
    prefix: --popmap
- id: threads
  doc: ': number of threads to run in parallel sections of code.'
  type: boolean
  inputBinding:
    prefix: --threads
- id: batch_size
  doc: '[int]: the number of loci to process in a batch (default: 10,000 in de novo
    mode; in reference mode, one chromosome per batch). Increase to speed analysis,
    uses more memory, decrease to save memory).'
  type: boolean
  inputBinding:
    prefix: --batch-size
- id: min_populations
  doc: '[int]: minimum number of populations a locus must be present in to process
    a locus.'
  type: boolean
  inputBinding:
    prefix: --min-populations
- id: min_samples_per_pop
  doc: '[float]: minimum percentage of individuals in a population required to process
    a locus for that population.'
  type: boolean
  inputBinding:
    prefix: --min-samples-per-pop
- id: min_samples_overall
  doc: '[float]: minimum percentage of individuals across populations required to
    process a locus.'
  type: boolean
  inputBinding:
    prefix: --min-samples-overall
- id: filter_haplotype_wise
  doc: ': apply the above filters haplotype wise (unshared SNPs will be pruned to
    reduce haplotype-wise missing data).'
  type: boolean
  inputBinding:
    prefix: --filter-haplotype-wise
- id: min_maf
  doc: '[float]: specify a minimum minor allele frequency required to process a SNP
    (0 < min_maf < 0.5).'
  type: boolean
  inputBinding:
    prefix: --min-maf
- id: min_mac
  doc: '[int]: specify a minimum minor allele count required to process a SNP.'
  type: boolean
  inputBinding:
    prefix: --min-mac
- id: max_obs_het
  doc: '[float]: specify a maximum observed heterozygosity required to process a SNP.'
  type: boolean
  inputBinding:
    prefix: --max-obs-het
- id: write_single_snp
  doc: ': restrict data analysis to only the first SNP per locus (implies --no-haps).'
  type: boolean
  inputBinding:
    prefix: --write-single-snp
- id: write_random_snp
  doc: ': restrict data analysis to one random SNP per locus (implies --no-haps).'
  type: boolean
  inputBinding:
    prefix: --write-random-snp
- id: blacklist
  doc: ': path to a file containing Blacklisted markers to be excluded from the export.'
  type: boolean
  inputBinding:
    prefix: --blacklist
- id: whitelist
  doc: ': path to a file containing Whitelisted markers to include in the export.'
  type: boolean
  inputBinding:
    prefix: --whitelist
- id: renz
  doc: ': restriction enzyme name.'
  type: boolean
  inputBinding:
    prefix: --renz
- id: merge_sites
  doc: ': merge loci that were produced from the same restriction enzyme cutsite (requires
    reference-aligned data).'
  type: boolean
  inputBinding:
    prefix: --merge-sites
- id: merge_prune_lim
  doc: ': when merging adjacent loci, if at least X% samples posses both loci prune
    the remaining samples out of the analysis.'
  type: boolean
  inputBinding:
    prefix: --merge-prune-lim
- id: h_we
  doc: ': calculate divergence from Hardy-Weinberg equilibrium for each locus.'
  type: boolean
  inputBinding:
    prefix: --hwe
- id: f_stats
  doc: ': enable SNP and haplotype-based F statistics.'
  type: boolean
  inputBinding:
    prefix: --fstats
- id: fst_correction
  doc: ": specify a p-value correction to be applied to Fst values based on a Fisher's\
    \ exact test. Default: off."
  type: boolean
  inputBinding:
    prefix: --fst-correction
- id: p_value_cut_off
  doc: '[float]: maximum p-value to keep an Fst measurement. Default: 0.05. (Also
    used as base for Bonferroni correction.)'
  type: boolean
  inputBinding:
    prefix: --p-value-cutoff
- id: sigma
  doc: '[int]: standard deviation of the kernel smoothing weight distribution. Default
    150kb.'
  type: boolean
  inputBinding:
    prefix: --sigma
- id: bootstrap
  doc: ': turn on boostrap resampling for all smoothed statistics.'
  type: boolean
  inputBinding:
    prefix: --bootstrap
- id: bootstrap_reps
  doc: '[int]: number of bootstrap resamplings to calculate (default 100).'
  type: boolean
  inputBinding:
    prefix: --bootstrap-reps
- id: bootstrap_pif_is
  doc: ': turn on boostrap resampling for smoothed SNP-based Pi and Fis calculations.'
  type: boolean
  inputBinding:
    prefix: --bootstrap-pifis
- id: bootstrap_fst
  doc: ': turn on boostrap resampling for smoothed Fst calculations based on pairwise
    population comparison of SNPs.'
  type: boolean
  inputBinding:
    prefix: --bootstrap-fst
- id: bootstrap_div
  doc: ': turn on boostrap resampling for smoothed haplotype diveristy and gene diversity
    calculations based on haplotypes.'
  type: boolean
  inputBinding:
    prefix: --bootstrap-div
- id: bootstrap_p_hist
  doc: ': turn on boostrap resampling for smoothed Phi_st calculations based on haplotypes.'
  type: boolean
  inputBinding:
    prefix: --bootstrap-phist
- id: bootstrap_wl
  doc: '[path]: only bootstrap loci contained in this whitelist.'
  type: boolean
  inputBinding:
    prefix: --bootstrap-wl
- id: ordered_export
  doc: ': if data is reference aligned, exports will be ordered; only a single representative
    of each overlapping site.'
  type: boolean
  inputBinding:
    prefix: --ordered-export
- id: fast_a_loci
  doc: ': output locus consensus sequences in FASTA format.'
  type: boolean
  inputBinding:
    prefix: --fasta-loci
- id: fast_a_samples
  doc: ': output the sequences of the two haplotypes of each (diploid) sample, for
    each locus, in FASTA format.'
  type: boolean
  inputBinding:
    prefix: --fasta-samples
- id: vcf
  doc: ': output SNPs and haplotypes in Variant Call Format (VCF).'
  type: boolean
  inputBinding:
    prefix: --vcf
- id: gene_pop
  doc: ': output SNPs and haplotypes in GenePop format.'
  type: boolean
  inputBinding:
    prefix: --genepop
- id: structure
  doc: ': output results in Structure format.'
  type: boolean
  inputBinding:
    prefix: --structure
- id: rad_painter
  doc: ': output results in fineRADstructure/RADpainter format.'
  type: boolean
  inputBinding:
    prefix: --radpainter
- id: plink
  doc: ': output genotypes in PLINK format.'
  type: boolean
  inputBinding:
    prefix: --plink
- id: hz_ar
  doc: ': output genotypes in Hybrid Zone Analysis using R (HZAR) format.'
  type: boolean
  inputBinding:
    prefix: --hzar
- id: phylip
  doc: ': output nucleotides that are fixed-within, and variant among populations
    in Phylip format for phylogenetic tree construction.'
  type: boolean
  inputBinding:
    prefix: --phylip
- id: phylip_var
  doc: ': include variable sites in the phylip output encoded using IUPAC notation.'
  type: boolean
  inputBinding:
    prefix: --phylip-var
- id: phylip_var_all
  doc: ': include all sequence as well as variable sites in the phylip output encoded
    using IUPAC notation.'
  type: boolean
  inputBinding:
    prefix: --phylip-var-all
- id: tree_mix
  doc: ': output SNPs in a format useable for the TreeMix program (Pickrell and Pritchard).'
  type: boolean
  inputBinding:
    prefix: --treemix
- id: no_hap_exports
  doc: ': omit haplotype outputs.'
  type: boolean
  inputBinding:
    prefix: --no-hap-exports
- id: fast_a_samples_raw
  doc: ': output all haplotypes observed in each sample, for each locus, in FASTA
    format.'
  type: boolean
  inputBinding:
    prefix: --fasta-samples-raw
- id: map_type
  doc: ": genetic map type to write. 'CP', 'DH', 'F2', and 'BC1' are the currently\
    \ supported map types."
  type: boolean
  inputBinding:
    prefix: --map-type
- id: map_format
  doc: ": mapping program format to write, 'joinmap', 'onemap', and 'rqtl' are currently\
    \ supported."
  type: boolean
  inputBinding:
    prefix: --map-format
- id: verbose
  doc: ': turn on additional logging.'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: log_fst_comp
  doc: ': log components of Fst/Phi_st calculations to a file.'
  type: boolean
  inputBinding:
    prefix: --log-fst-comp
outputs: []
cwlVersion: v1.1
baseCommand:
- populations
