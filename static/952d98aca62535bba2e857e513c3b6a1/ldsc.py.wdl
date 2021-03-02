version 1.0

task Ldscpy {
  input {
    File? out
    File? b_file
    Boolean? l_two
    File? keep
    Int? ld_wind_snps
    Int? ld_wind_kb
    Int? ld_wind_cm
    Int? print_snps
    File? an_not
    Boolean? thin_an_not
    File? cts_bin
    Float? cts_breaks
    String? cts_names
    Boolean? per_allele
    Int? pq_exp
    Boolean? no_print_an_not
    String? maf
    Int? h_two_cts
    String? rg
    File? ref_ld
    File? ref_ld_chr
    File? w_ld
    Int? w_ld_chr
    Boolean? overlap_an_not
    Boolean? print_coefficients
    File? frq_file
    File? frq_file_chr
    Boolean? no_intercept
    Int? intercept_h_two
    Int? intercept_genco_v
    Int? snps_you_want
    String? two_step
    Int? chisq_max
    File? ref_ld_chr_cts
    Boolean? print_all_cts
    Boolean? print_delete_vals
    Int? chunk_size
    Boolean? pickle
    Boolean? yes_really
    Boolean? not_m_five_five_zero
    Boolean? return_silly_things
    Boolean? no_check_alleles
    String? samp_prev
    String? pop_prev
    String? extract
    String jackknife_dot
    Int zero_dot
    String score_dot
    String matrices_dot
  }
  command <<<
    ldsc_py \
      ~{jackknife_dot} \
      ~{zero_dot} \
      ~{score_dot} \
      ~{matrices_dot} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(b_file) then ("--bfile " +  '"' + b_file + '"') else ""} \
      ~{if (l_two) then "--l2" else ""} \
      ~{if defined(keep) then ("--keep " +  '"' + keep + '"') else ""} \
      ~{if defined(ld_wind_snps) then ("--ld-wind-snps " +  '"' + ld_wind_snps + '"') else ""} \
      ~{if defined(ld_wind_kb) then ("--ld-wind-kb " +  '"' + ld_wind_kb + '"') else ""} \
      ~{if defined(ld_wind_cm) then ("--ld-wind-cm " +  '"' + ld_wind_cm + '"') else ""} \
      ~{if defined(print_snps) then ("--print-snps " +  '"' + print_snps + '"') else ""} \
      ~{if defined(an_not) then ("--annot " +  '"' + an_not + '"') else ""} \
      ~{if (thin_an_not) then "--thin-annot" else ""} \
      ~{if defined(cts_bin) then ("--cts-bin " +  '"' + cts_bin + '"') else ""} \
      ~{if defined(cts_breaks) then ("--cts-breaks " +  '"' + cts_breaks + '"') else ""} \
      ~{if defined(cts_names) then ("--cts-names " +  '"' + cts_names + '"') else ""} \
      ~{if (per_allele) then "--per-allele" else ""} \
      ~{if defined(pq_exp) then ("--pq-exp " +  '"' + pq_exp + '"') else ""} \
      ~{if (no_print_an_not) then "--no-print-annot" else ""} \
      ~{if defined(maf) then ("--maf " +  '"' + maf + '"') else ""} \
      ~{if defined(h_two_cts) then ("--h2-cts " +  '"' + h_two_cts + '"') else ""} \
      ~{if defined(rg) then ("--rg " +  '"' + rg + '"') else ""} \
      ~{if defined(ref_ld) then ("--ref-ld " +  '"' + ref_ld + '"') else ""} \
      ~{if defined(ref_ld_chr) then ("--ref-ld-chr " +  '"' + ref_ld_chr + '"') else ""} \
      ~{if defined(w_ld) then ("--w-ld " +  '"' + w_ld + '"') else ""} \
      ~{if defined(w_ld_chr) then ("--w-ld-chr " +  '"' + w_ld_chr + '"') else ""} \
      ~{if (overlap_an_not) then "--overlap-annot" else ""} \
      ~{if (print_coefficients) then "--print-coefficients" else ""} \
      ~{if defined(frq_file) then ("--frqfile " +  '"' + frq_file + '"') else ""} \
      ~{if defined(frq_file_chr) then ("--frqfile-chr " +  '"' + frq_file_chr + '"') else ""} \
      ~{if (no_intercept) then "--no-intercept" else ""} \
      ~{if defined(intercept_h_two) then ("--intercept-h2 " +  '"' + intercept_h_two + '"') else ""} \
      ~{if defined(intercept_genco_v) then ("--intercept-gencov " +  '"' + intercept_genco_v + '"') else ""} \
      ~{if defined(snps_you_want) then ("--M " +  '"' + snps_you_want + '"') else ""} \
      ~{if defined(two_step) then ("--two-step " +  '"' + two_step + '"') else ""} \
      ~{if defined(chisq_max) then ("--chisq-max " +  '"' + chisq_max + '"') else ""} \
      ~{if defined(ref_ld_chr_cts) then ("--ref-ld-chr-cts " +  '"' + ref_ld_chr_cts + '"') else ""} \
      ~{if (print_all_cts) then "--print-all-cts" else ""} \
      ~{if (print_delete_vals) then "--print-delete-vals" else ""} \
      ~{if defined(chunk_size) then ("--chunk-size " +  '"' + chunk_size + '"') else ""} \
      ~{if (pickle) then "--pickle" else ""} \
      ~{if (yes_really) then "--yes-really" else ""} \
      ~{if (not_m_five_five_zero) then "--not-M-5-50" else ""} \
      ~{if (return_silly_things) then "--return-silly-things" else ""} \
      ~{if (no_check_alleles) then "--no-check-alleles" else ""} \
      ~{if defined(samp_prev) then ("--samp-prev " +  '"' + samp_prev + '"') else ""} \
      ~{if defined(pop_prev) then ("--pop-prev " +  '"' + pop_prev + '"') else ""} \
      ~{if defined(extract) then ("--extract " +  '"' + extract + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out: "Output filename prefix. If --out is not set, LDSC will\\nuse ldsc as the defualt output filename prefix."
    b_file: "Prefix for Plink .bed/.bim/.fam file"
    l_two: "Estimate l2. Compatible with both jackknife and non-"
    keep: "File with individuals to include in LD Score\\nestimation. The file should contain one individual ID\\nper row."
    ld_wind_snps: "Specify the window size to be used for estimating LD\\nScores in units of # of SNPs. You can only specify one\\n--ld-wind-* option."
    ld_wind_kb: "Specify the window size to be used for estimating LD\\nScores in units of kilobase-pairs (kb). You can only\\nspecify one --ld-wind-* option."
    ld_wind_cm: "Specify the window size to be used for estimating LD\\nScores in units of centiMorgans (cM). You can only\\nspecify one --ld-wind-* option."
    print_snps: "This flag tells LDSC to only print LD Scores for the\\nSNPs listed (one ID per row) in PRINT_SNPS. The sum\\nr^2 will still include SNPs not in PRINT_SNPs. This is\\nuseful for reducing the number of LD Scores that have\\nto be read into memory when estimating h2 or rg."
    an_not: "Filename prefix for annotation file for partitioned LD\\nScore estimation. LDSC will automatically append\\n.annot or .annot.gz to the filename prefix. See\\ndocs/file_formats_ld for a definition of the .annot\\nformat."
    thin_an_not: "This flag says your annot files have only annotations,\\nwith no SNP, CM, CHR, BP columns."
    cts_bin: "This flag tells LDSC to compute partitioned LD Scores,\\nwhere the partition is defined by cutting one or\\nseveral continuous variable[s] into bins. The argument\\nto this flag should be the name of a single file or a\\ncomma-separated list of files. The file format is two\\ncolumns, with SNP IDs in the first column and the\\ncontinuous variable in the second column."
    cts_breaks: "Use this flag to specify names for the continuous\\nvariables cut into bins with --cts-bin. For each\\ncontinuous variable, specify breaks as a comma-\\nseparated list of breakpoints, and separate the\\nbreakpoints for each variable with an x. For example,\\nif binning on MAF and distance to gene (in kb), you\\nmight set --cts-breaks 0.1,0.25,0.4x10,100,1000"
    cts_names: "Use this flag to specify names for the continuous\\nvariables cut into bins with --cts-bin. The argument\\nto this flag should be a comma-separated list of\\nnames. For example, if binning on DAF and distance to\\ngene, you might set --cts-bin DAF,DIST_TO_GENE"
    per_allele: "Setting this flag causes LDSC to compute per-allele LD\\nScores, i.e., \\ell_j := \\sum_k p_k(1-p_k)r^2_{jk},\\nwhere p_k denotes the MAF of SNP j."
    pq_exp: "Setting this flag causes LDSC to compute LD Scores\\nwith the given scale factor, i.e., \\ell_j := \\sum_k\\n(p_k(1-p_k))^a r^2_{jk}, where p_k denotes the MAF of\\nSNP j and a is the argument to --pq-exp."
    no_print_an_not: "By defualt, seting --cts-bin or --cts-bin-add causes\\nLDSC to print the resulting annot matrix. Setting\\n--no-print-annot tells LDSC not to print the annot\\nmatrix."
    maf: "Minor allele frequency lower bound. Default is MAF >"
    h_two_cts: "Filename for a .sumstats[.gz] file for cell-type-\\nspecific analysis. --h2-cts requires the --ref-ld-chr,\\n--w-ld, and --ref-ld-chr-cts flags."
    rg: "Comma-separated list of prefixes of .chisq filed for\\ngenetic correlation estimation."
    ref_ld: "Use --ref-ld to tell LDSC which LD Scores to use as\\nthe predictors in the LD Score regression. LDSC will\\nautomatically append .l2.ldscore/.l2.ldscore.gz to the\\nfilename prefix."
    ref_ld_chr: "Same as --ref-ld, but will automatically concatenate\\n.l2.ldscore files split across 22 chromosomes. LDSC\\nwill automatically append .l2.ldscore/.l2.ldscore.gz\\nto the filename prefix. If the filename prefix\\ncontains the symbol @, LDSC will replace the @ symbol\\nwith chromosome numbers. Otherwise, LDSC will append\\nchromosome numbers to the end of the filename\\nprefix.Example 1: --ref-ld-chr ld/ will read\\nld/1.l2.ldscore.gz ... ld/22.l2.ldscore.gzExample 2:\\n--ref-ld-chr ld/@_kg will read ld/1_kg.l2.ldscore.gz\\n... ld/22_kg.l2.ldscore.gz"
    w_ld: "Filename prefix for file with LD Scores with sum r^2\\ntaken over SNPs included in the regression. LDSC will\\nautomatically append .l2.ldscore/.l2.ldscore.gz."
    w_ld_chr: "Same as --w-ld, but will read files split into 22\\nchromosomes in the same manner as --ref-ld-chr."
    overlap_an_not: "This flag informs LDSC that the partitioned LD Scores\\nwere generates using an annot matrix with overlapping\\ncategories (i.e., not all row sums equal 1), and\\nprevents LDSC from displaying output that is\\nmeaningless with overlapping categories."
    print_coefficients: "when categories are overlapping, print coefficients as\\nwell as heritabilities."
    frq_file: "For use with --overlap-annot. Provides allele\\nfrequencies to prune to common snps if --not-M-5-50 is\\nnot set."
    frq_file_chr: "Prefix for --frqfile files split over chromosome."
    no_intercept: "If used with --h2, this constrains the LD Score\\nregression intercept to equal 1. If used with --rg,\\nthis constrains the LD Score regression intercepts for\\nthe h2 estimates to be one and the intercept for the\\ngenetic covariance estimate to be zero."
    intercept_h_two: "Intercepts for constrained-intercept single-trait LD\\nScore regression."
    intercept_genco_v: "Intercepts for constrained-intercept cross-trait LD\\nScore regression. Must have same length as --rg. The\\nfirst entry is ignored."
    snps_you_want: "# of SNPs (if you don't want to use the .l2.M files\\nthat came with your .l2.ldscore.gz files)"
    two_step: "Test statistic bound for use with the two-step\\nestimator. Not compatible with --no-intercept and\\n--constrain-intercept."
    chisq_max: "Max chi^2."
    ref_ld_chr_cts: "Name of a file that has a list of file name prefixes\\nfor cell-type-specific analysis."
    print_all_cts: "For use with --h2/--rg. This flag tells LDSC to print\\nthe covaraince matrix of the estimates."
    print_delete_vals: "If this flag is set, LDSC will print the block\\njackknife delete-values (i.e., the regression\\ncoefficeints estimated from the data with a block\\nremoved). The delete-values are formatted as a matrix\\nwith (# of jackknife blocks) rows and (# of LD Scores)\\ncolumns."
    chunk_size: "Chunk size for LD Score calculation. Use the default."
    pickle: "Store .l2.ldscore files as pickles instead of gzipped\\ntab-delimited text."
    yes_really: "Yes, I really want to compute whole-chromosome LD"
    not_m_five_five_zero: "This flag tells LDSC to use the .l2.M file instead of\\nthe .l2.M_5_50 file."
    return_silly_things: "Force ldsc to return silly genetic correlation\\nestimates."
    no_check_alleles: "For rg estimation, skip checking whether the alleles\\nmatch. This check is redundant for pairs of chisq\\nfiles generated using munge_sumstats.py and the same\\nargument to the --merge-alleles flag."
    samp_prev: "Sample prevalence of binary phenotype (for conversion\\nto liability scale)."
    pop_prev: "Population prevalence of binary phenotype (for\\nconversion to liability scale).\\n"
    extract: ""
    jackknife_dot: "--extract EXTRACT     File with SNPs to include in LD Score estimation. The"
    zero_dot: "--h2 H2               Filename for a .sumstats[.gz] file for one-phenotype"
    score_dot: "--invert-anyway       Force LDSC to attempt to invert ill-conditioned"
    matrices_dot: "--n-blocks N_BLOCKS   Number of block jackknife blocks."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}