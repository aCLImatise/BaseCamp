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
    Boolean? w_ld
    String? rg
    String? ref_ld
    Int? w_ld_chr
    Boolean? overlap_an_not
    Boolean? print_coefficients
    File? frq_file
    Boolean? no_intercept
    Int? snps_you_want
    String? two_step
    Boolean? print_cov
    Boolean? print_delete_vals
    Boolean? pickle
    Boolean? yes_really
    Boolean? invert_anyway
    Int? n_blocks
    Boolean? not_m_five_five_zero
    Boolean? no_check_alleles
    String? pop_prev
    String? extract
    String jackknife_dot
    Int zero_dot
  }
  command <<<
    ldsc_py \
      ~{jackknife_dot} \
      ~{zero_dot} \
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
      ~{if (w_ld) then "--w-ld" else ""} \
      ~{if defined(rg) then ("--rg " +  '"' + rg + '"') else ""} \
      ~{if defined(ref_ld) then ("--ref-ld " +  '"' + ref_ld + '"') else ""} \
      ~{if defined(w_ld_chr) then ("--w-ld-chr " +  '"' + w_ld_chr + '"') else ""} \
      ~{if (overlap_an_not) then "--overlap-annot" else ""} \
      ~{if (print_coefficients) then "--print-coefficients" else ""} \
      ~{if defined(frq_file) then ("--frqfile " +  '"' + frq_file + '"') else ""} \
      ~{if (no_intercept) then "--no-intercept" else ""} \
      ~{if defined(snps_you_want) then ("--M " +  '"' + snps_you_want + '"') else ""} \
      ~{if defined(two_step) then ("--two-step " +  '"' + two_step + '"') else ""} \
      ~{if (print_cov) then "--print-cov" else ""} \
      ~{if (print_delete_vals) then "--print-delete-vals" else ""} \
      ~{if (pickle) then "--pickle" else ""} \
      ~{if (yes_really) then "--yes-really" else ""} \
      ~{if (invert_anyway) then "--invert-anyway" else ""} \
      ~{if defined(n_blocks) then ("--n-blocks " +  '"' + n_blocks + '"') else ""} \
      ~{if (not_m_five_five_zero) then "--not-M-5-50" else ""} \
      ~{if (no_check_alleles) then "--no-check-alleles" else ""} \
      ~{if defined(pop_prev) then ("--pop-prev " +  '"' + pop_prev + '"') else ""} \
      ~{if defined(extract) then ("--extract " +  '"' + extract + '"') else ""}
  >>>
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
    w_ld: ", and --ref-ld-chr-cts flags."
    rg: "Comma-separated list of prefixes of .chisq filed for"
    ref_ld: "Use --ref-ld to tell LDSC which LD Scores to use as"
    w_ld_chr: "Same as --w-ld, but will read files split into 22"
    overlap_an_not: "This flag informs LDSC that the partitioned LD Scores"
    print_coefficients: "when categories are overlapping, print coefficients as"
    frq_file: "For use with --overlap-annot. Provides allele"
    no_intercept: "If used with --h2, this constrains the LD Score"
    snps_you_want: "# of SNPs (if you don't want to use the .l2.M files"
    two_step: "Test statistic bound for use with the two-step"
    print_cov: "For use with --h2/--rg. This flag tells LDSC to print"
    print_delete_vals: "If this flag is set, LDSC will print the block"
    pickle: "Store .l2.ldscore files as pickles instead of gzipped"
    yes_really: "Yes, I really want to compute whole-chromosome LD"
    invert_anyway: "Force LDSC to attempt to invert ill-conditioned"
    n_blocks: "Number of block jackknife blocks."
    not_m_five_five_zero: "This flag tells LDSC to use the .l2.M file instead of"
    no_check_alleles: "For rg estimation, skip checking whether the alleles"
    pop_prev: "Population prevalence of binary phenotype (for"
    extract: ""
    jackknife_dot: "--extract EXTRACT     File with SNPs to include in LD Score estimation. The"
    zero_dot: "--h2 H2               Filename for a .sumstats[.gz] file for one-phenotype"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}