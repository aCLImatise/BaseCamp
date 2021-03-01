class: CommandLineTool
id: regenie.cwl
inputs:
- id: in_helpfull
  doc: print list of all available options
  type: boolean?
  inputBinding:
    prefix: --helpFull
- id: in_step
  doc: "specify if fitting null model (=1) or\nassociation testing (=2)"
  type: long?
  inputBinding:
    prefix: --step
- id: in_bed
  doc: prefix to PLINK .bed/.bim/.fam files
  type: string?
  inputBinding:
    prefix: --bed
- id: in_pgen
  doc: prefix to PLINK2 .pgen/.pvar/.psam files
  type: long?
  inputBinding:
    prefix: --pgen
- id: in_b_gen
  doc: BGEN file
  type: File?
  inputBinding:
    prefix: --bgen
- id: in_sample
  doc: sample file corresponding to BGEN file
  type: File?
  inputBinding:
    prefix: --sample
- id: in_ref_first
  doc: "use the first allele as the reference for\nBGEN or PLINK bed/bim/fam input\
    \ format [default\nassumes reference is last]"
  type: boolean?
  inputBinding:
    prefix: --ref-first
- id: in_keep
  doc: "file listing samples to retain in the\nanalysis (no header; starts with FID\
    \ IID)"
  type: File?
  inputBinding:
    prefix: --keep
- id: in_remove
  doc: "file listing samples to remove from the\nanalysis (no header; starts with\
    \ FID IID)"
  type: File?
  inputBinding:
    prefix: --remove
- id: in_extract
  doc: file with IDs of variants to retain in the
  type: File?
  inputBinding:
    prefix: --extract
- id: in_pheno_col
  doc: "phenotype name in header (use for each\nphenotype to keep)"
  type: string?
  inputBinding:
    prefix: --phenoCol
- id: in_pheno_col_list
  doc: ",..,STRING\ncomma separated list of phenotype names to\nkeep"
  type: string?
  inputBinding:
    prefix: --phenoColList
- id: in_co_var_file
  doc: "covariate file (header required starting with\nFID IID)"
  type: File?
  inputBinding:
    prefix: --covarFile
- id: in_co_var_col
  doc: "covariate name in header (use for each\ncovariate to keep)"
  type: string?
  inputBinding:
    prefix: --covarCol
- id: in_co_var_col_list
  doc: ",..,STRING\ncomma separated list of covariate names to\nkeep"
  type: string?
  inputBinding:
    prefix: --covarColList
- id: in_bt
  doc: analyze phenotypes as binary
  type: boolean?
  inputBinding:
    prefix: --bt
- id: in_cc_one_two
  doc: "use control=1,case=2,missing=NA encoding for\nbinary traits"
  type: boolean?
  inputBinding:
    prefix: --cc12
- id: in_b_size
  doc: size of genotype blocks
  type: long?
  inputBinding:
    prefix: --bsize
- id: in_cv
  doc: (=5)              number of cross validation (CV) folds
  type: long?
  inputBinding:
    prefix: --cv
- id: in_loo_cv
  doc: use leave-one out cross validation (LOOCV)
  type: boolean?
  inputBinding:
    prefix: --loocv
- id: in_l_zero
  doc: "(=5)              number of ridge parameters to use when\nfitting models within\
    \ blocks [evenly spaced in\n(0,1)]"
  type: long?
  inputBinding:
    prefix: --l0
- id: in_lone
  doc: "(=5)              number of ridge parameters to use when\nfitting model across\
    \ blocks [evenly spaced in (0,1)]"
  type: long?
  inputBinding:
    prefix: --l1
- id: in_lowmem
  doc: "reduce memory usage by writing level 0\npredictions to temporary files"
  type: boolean?
  inputBinding:
    prefix: --lowmem
- id: in_lowmem_prefix
  doc: "prefix where to write the temporary files in\nstep 1 (default is to use prefix\
    \ from --out)"
  type: long?
  inputBinding:
    prefix: --lowmem-prefix
- id: in_strict
  doc: "remove all samples with missingness at any of\nthe traits"
  type: boolean?
  inputBinding:
    prefix: --strict
- id: in_print_prs
  doc: "also output polygenic predictions without\nusing LOCO (=whole genome PRS)"
  type: boolean?
  inputBinding:
    prefix: --print-prs
- id: in_out
  doc: prefix for output files
  type: string?
  inputBinding:
    prefix: --out
- id: in_threads
  doc: number of threads
  type: long?
  inputBinding:
    prefix: --threads
- id: in_pred
  doc: "file containing the list of predictions files\nfrom step 1"
  type: File?
  inputBinding:
    prefix: --pred
- id: in_ignore_pred
  doc: "skip reading predictions from step 1\n(equivalent to linear/logistic regression\
    \ with only\ncovariates)"
  type: boolean?
  inputBinding:
    prefix: --ignore-pred
- id: in_use_prs
  doc: "when using whole genome PRS step 1 output in\n'--pred'"
  type: boolean?
  inputBinding:
    prefix: --use-prs
- id: in_force_impute
  doc: "keep and impute missing observations when in\nstep 2 (default is to drop missing\
    \ for each\ntrait)"
  type: boolean?
  inputBinding:
    prefix: --force-impute
- id: in_write_samples
  doc: "write IDs of samples included for each trait\n(only in step 2)"
  type: boolean?
  inputBinding:
    prefix: --write-samples
- id: in_min_mac
  doc: (=5)          minimum minor allele count (MAC) for tested
  type: long?
  inputBinding:
    prefix: --minMAC
- id: in_split
  doc: "split asssociation results into separate\nfiles for each trait"
  type: boolean?
  inputBinding:
    prefix: --split
- id: in_firth
  doc: use Firth correction for p-values less than
  type: boolean?
  inputBinding:
    prefix: --firth
- id: in_spa
  doc: "use Saddlepoint approximation (SPA) for\np-values less than threshold"
  type: boolean?
  inputBinding:
    prefix: --spa
- id: in_p_thresh
  doc: "(=0.05)    P-value threshold below which to apply\nFirth/SPA correction"
  type: double?
  inputBinding:
    prefix: --pThresh
- id: in_chr
  doc: "specify chromosome to test in step 2 (use for\neach chromosome)"
  type: long?
  inputBinding:
    prefix: --chr
- id: in_chr_list
  doc: ",..,STRING\nComma separated list of chromosomes to test\nin step 2"
  type: string?
  inputBinding:
    prefix: --chrList
- id: in_range
  doc: ":MINPOS-MAXPOS\nto specify a physical position window for\nvariants to test\
    \ in step 2"
  type: long?
  inputBinding:
    prefix: --range
- id: in_test
  doc: "'dominant' or 'recessive' (default is\nadditive test)"
  type: string?
  inputBinding:
    prefix: --test
- id: in_gz
  doc: compress output files (gzip format)
  type: boolean?
  inputBinding:
    prefix: --gz
- id: in_p
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_exclude
  doc: ''
  type: File?
  inputBinding:
    prefix: --exclude
- id: in_variants
  doc: --minINFO DOUBLE(=0)      minimum imputation info score (Impute/Mach
  type: string
  inputBinding:
    position: 0
- id: in_threshold
  doc: --approx                  use approximation to Firth correction for
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/regenie:1.0.6.9--h485b6fc_0
cwlVersion: v1.1
baseCommand:
- regenie
