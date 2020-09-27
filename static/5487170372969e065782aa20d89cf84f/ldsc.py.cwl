class: CommandLineTool
id: ldsc.py.cwl
inputs:
- id: in_out
  doc: "Output filename prefix. If --out is not set, LDSC will\nuse ldsc as the defualt\
    \ output filename prefix."
  type: File
  inputBinding:
    prefix: --out
- id: in_b_file
  doc: Prefix for Plink .bed/.bim/.fam file
  type: File
  inputBinding:
    prefix: --bfile
- id: in_l_two
  doc: Estimate l2. Compatible with both jackknife and non-
  type: boolean
  inputBinding:
    prefix: --l2
- id: in_keep
  doc: "File with individuals to include in LD Score\nestimation. The file should\
    \ contain one individual ID\nper row."
  type: File
  inputBinding:
    prefix: --keep
- id: in_ld_wind_snps
  doc: "Specify the window size to be used for estimating LD\nScores in units of #\
    \ of SNPs. You can only specify one\n--ld-wind-* option."
  type: long
  inputBinding:
    prefix: --ld-wind-snps
- id: in_ld_wind_kb
  doc: "Specify the window size to be used for estimating LD\nScores in units of kilobase-pairs\
    \ (kb). You can only\nspecify one --ld-wind-* option."
  type: long
  inputBinding:
    prefix: --ld-wind-kb
- id: in_ld_wind_cm
  doc: "Specify the window size to be used for estimating LD\nScores in units of centiMorgans\
    \ (cM). You can only\nspecify one --ld-wind-* option."
  type: long
  inputBinding:
    prefix: --ld-wind-cm
- id: in_print_snps
  doc: "This flag tells LDSC to only print LD Scores for the\nSNPs listed (one ID\
    \ per row) in PRINT_SNPS. The sum\nr^2 will still include SNPs not in PRINT_SNPs.\
    \ This is\nuseful for reducing the number of LD Scores that have\nto be read into\
    \ memory when estimating h2 or rg."
  type: long
  inputBinding:
    prefix: --print-snps
- id: in_an_not
  doc: "Filename prefix for annotation file for partitioned LD\nScore estimation.\
    \ LDSC will automatically append\n.annot or .annot.gz to the filename prefix.\
    \ See\ndocs/file_formats_ld for a definition of the .annot\nformat."
  type: File
  inputBinding:
    prefix: --annot
- id: in_thin_an_not
  doc: "This flag says your annot files have only annotations,\nwith no SNP, CM, CHR,\
    \ BP columns."
  type: boolean
  inputBinding:
    prefix: --thin-annot
- id: in_cts_bin
  doc: "This flag tells LDSC to compute partitioned LD Scores,\nwhere the partition\
    \ is defined by cutting one or\nseveral continuous variable[s] into bins. The\
    \ argument\nto this flag should be the name of a single file or a\ncomma-separated\
    \ list of files. The file format is two\ncolumns, with SNP IDs in the first column\
    \ and the\ncontinuous variable in the second column."
  type: File
  inputBinding:
    prefix: --cts-bin
- id: in_cts_breaks
  doc: "Use this flag to specify names for the continuous\nvariables cut into bins\
    \ with --cts-bin. For each\ncontinuous variable, specify breaks as a comma-\n\
    separated list of breakpoints, and separate the\nbreakpoints for each variable\
    \ with an x. For example,\nif binning on MAF and distance to gene (in kb), you\n\
    might set --cts-breaks 0.1,0.25,0.4x10,100,1000"
  type: double
  inputBinding:
    prefix: --cts-breaks
- id: in_cts_names
  doc: "Use this flag to specify names for the continuous\nvariables cut into bins\
    \ with --cts-bin. The argument\nto this flag should be a comma-separated list\
    \ of\nnames. For example, if binning on DAF and distance to\ngene, you might set\
    \ --cts-bin DAF,DIST_TO_GENE"
  type: string
  inputBinding:
    prefix: --cts-names
- id: in_per_allele
  doc: "Setting this flag causes LDSC to compute per-allele LD\nScores, i.e., \\ell_j\
    \ := \\sum_k p_k(1-p_k)r^2_{jk},\nwhere p_k denotes the MAF of SNP j."
  type: boolean
  inputBinding:
    prefix: --per-allele
- id: in_pq_exp
  doc: "Setting this flag causes LDSC to compute LD Scores\nwith the given scale factor,\
    \ i.e., \\ell_j := \\sum_k\n(p_k(1-p_k))^a r^2_{jk}, where p_k denotes the MAF\
    \ of\nSNP j and a is the argument to --pq-exp."
  type: long
  inputBinding:
    prefix: --pq-exp
- id: in_no_print_an_not
  doc: "By defualt, seting --cts-bin or --cts-bin-add causes\nLDSC to print the resulting\
    \ annot matrix. Setting\n--no-print-annot tells LDSC not to print the annot\n\
    matrix."
  type: boolean
  inputBinding:
    prefix: --no-print-annot
- id: in_maf
  doc: Minor allele frequency lower bound. Default is MAF >
  type: string
  inputBinding:
    prefix: --maf
- id: in_w_ld
  doc: ', and --ref-ld-chr-cts flags.'
  type: boolean
  inputBinding:
    prefix: --w-ld
- id: in_rg
  doc: Comma-separated list of prefixes of .chisq filed for
  type: string
  inputBinding:
    prefix: --rg
- id: in_ref_ld
  doc: Use --ref-ld to tell LDSC which LD Scores to use as
  type: string
  inputBinding:
    prefix: --ref-ld
- id: in_w_ld_chr
  doc: Same as --w-ld, but will read files split into 22
  type: long
  inputBinding:
    prefix: --w-ld-chr
- id: in_overlap_an_not
  doc: This flag informs LDSC that the partitioned LD Scores
  type: boolean
  inputBinding:
    prefix: --overlap-annot
- id: in_print_coefficients
  doc: when categories are overlapping, print coefficients as
  type: boolean
  inputBinding:
    prefix: --print-coefficients
- id: in_frq_file
  doc: For use with --overlap-annot. Provides allele
  type: File
  inputBinding:
    prefix: --frqfile
- id: in_no_intercept
  doc: If used with --h2, this constrains the LD Score
  type: boolean
  inputBinding:
    prefix: --no-intercept
- id: in_snps_you_want
  doc: "# of SNPs (if you don't want to use the .l2.M files"
  type: long
  inputBinding:
    prefix: --M
- id: in_two_step
  doc: Test statistic bound for use with the two-step
  type: string
  inputBinding:
    prefix: --two-step
- id: in_print_cov
  doc: For use with --h2/--rg. This flag tells LDSC to print
  type: boolean
  inputBinding:
    prefix: --print-cov
- id: in_print_delete_vals
  doc: If this flag is set, LDSC will print the block
  type: boolean
  inputBinding:
    prefix: --print-delete-vals
- id: in_pickle
  doc: Store .l2.ldscore files as pickles instead of gzipped
  type: boolean
  inputBinding:
    prefix: --pickle
- id: in_yes_really
  doc: Yes, I really want to compute whole-chromosome LD
  type: boolean
  inputBinding:
    prefix: --yes-really
- id: in_invert_anyway
  doc: Force LDSC to attempt to invert ill-conditioned
  type: boolean
  inputBinding:
    prefix: --invert-anyway
- id: in_n_blocks
  doc: Number of block jackknife blocks.
  type: long
  inputBinding:
    prefix: --n-blocks
- id: in_not_m_five_five_zero
  doc: This flag tells LDSC to use the .l2.M file instead of
  type: boolean
  inputBinding:
    prefix: --not-M-5-50
- id: in_no_check_alleles
  doc: For rg estimation, skip checking whether the alleles
  type: boolean
  inputBinding:
    prefix: --no-check-alleles
- id: in_pop_prev
  doc: Population prevalence of binary phenotype (for
  type: string
  inputBinding:
    prefix: --pop-prev
- id: in_extract
  doc: ''
  type: string
  inputBinding:
    prefix: --extract
- id: in_jackknife_dot
  doc: --extract EXTRACT     File with SNPs to include in LD Score estimation. The
  type: string
  inputBinding:
    position: 0
- id: in_zero_dot
  doc: --h2 H2               Filename for a .sumstats[.gz] file for one-phenotype
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "Output filename prefix. If --out is not set, LDSC will\nuse ldsc as the defualt\
    \ output filename prefix."
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- ldsc.py
