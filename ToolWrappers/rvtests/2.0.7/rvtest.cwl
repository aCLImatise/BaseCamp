class: CommandLineTool
id: rvtest.cwl
inputs:
- id: in_in_vcf
  doc: ': Input VCF File'
  type: boolean
  inputBinding:
    prefix: --inVcf
- id: in_in_bg_en
  doc: ': Input BGEN File'
  type: boolean
  inputBinding:
    prefix: --inBgen
- id: in_in_bg_en_sample
  doc: ': Input Sample IDs for the BGEN File'
  type: boolean
  inputBinding:
    prefix: --inBgenSample
- id: in_ink_gg
  doc: ': Input KGG File'
  type: boolean
  inputBinding:
    prefix: --inKgg
- id: in_out
  doc: ': Output prefix'
  type: boolean
  inputBinding:
    prefix: --out
- id: in_output_raw
  doc: ": Output genotypes, phenotype, covariates(if any); and\ncollapsed genotype\
    \ to tabular files"
  type: boolean
  inputBinding:
    prefix: --outputRaw
- id: in_co_var
  doc: ': Specify covariate file'
  type: boolean
  inputBinding:
    prefix: --covar
- id: in_co_var_name
  doc: ": Specify the column name in covariate file to be\nincluded in analysis"
  type: boolean
  inputBinding:
    prefix: --covar-name
- id: in_sex
  doc: ': Include sex (5th column in the PED file) as a covariate'
  type: boolean
  inputBinding:
    prefix: --sex
- id: in_pheno
  doc: ': Specify phenotype file'
  type: boolean
  inputBinding:
    prefix: --pheno
- id: in_inverse_normal
  doc: ': Transform phenotype like normal distribution'
  type: boolean
  inputBinding:
    prefix: --inverseNormal
- id: in_use_residual_as_phenotype
  doc: ": Fit covariate ~ phenotype, use residual to replace\nphenotype"
  type: boolean
  inputBinding:
    prefix: --useResidualAsPhenotype
- id: in_m_pheno
  doc: ": Specify which phenotype column to read (default: 1);\n--pheno-name: Specify\
    \ which phenotype column to read by header\n--qtl: Treat phenotype as quantitative\
    \ trait"
  type: boolean
  inputBinding:
    prefix: --mpheno
- id: in_multiple_pheno
  doc: ": Specify aa template file for analyses of more than one\nphenotype"
  type: boolean
  inputBinding:
    prefix: --multiplePheno
- id: in_dosage
  doc: ': Specify which dosage tag to use. (e.g. EC or DS);'
  type: boolean
  inputBinding:
    prefix: --dosage
- id: in_multiple_allele
  doc: ': Support multi-allelic genotypes'
  type: boolean
  inputBinding:
    prefix: --multipleAllele
- id: in_xlabel
  doc: ': Specify X chromosome label (default: 23|X);'
  type: boolean
  inputBinding:
    prefix: --xLabel
- id: in_x_par_region
  doc: ": Specify PAR region (default: hg19);, can be build\nnumber e.g. hg38, b37;\
    \ or specify region, e.g.\n'60001-2699520,154931044-155260560'"
  type: boolean
  inputBinding:
    prefix: --xParRegion
- id: in_people_include_id
  doc: ': List IDs of people that will be included in study'
  type: boolean
  inputBinding:
    prefix: --peopleIncludeID
- id: in_people_include_file
  doc: ": From given file, set IDs of people that will be\nincluded in study"
  type: boolean
  inputBinding:
    prefix: --peopleIncludeFile
- id: in_people_exclude_id
  doc: ': List IDs of people that will be included in study'
  type: boolean
  inputBinding:
    prefix: --peopleExcludeID
- id: in_people_exclude_file
  doc: ": From given file, set IDs of people that will be\nincluded in study"
  type: boolean
  inputBinding:
    prefix: --peopleExcludeFile
- id: in_range_list
  doc: ': Specify some ranges to use, please use chr:begin-end'
  type: boolean
  inputBinding:
    prefix: --rangeList
- id: in_site_file
  doc: ": Specify the file containing sites to include, please\nuse \"chr pos\" format."
  type: boolean
  inputBinding:
    prefix: --siteFile
- id: in_site_depth_min
  doc: ': Specify minimum depth(inclusive); to be included in'
  type: boolean
  inputBinding:
    prefix: --siteDepthMin
- id: in_an_no_type
  doc: ": Specify annotation type that is followed by ANNO= in\nthe VCF INFO field,\
    \ regular expression is allowed"
  type: boolean
  inputBinding:
    prefix: --annoType
- id: in_in_dv_depth_min
  doc: ": Specify minimum depth(inclusive); of a sample to be\nincluded in analysis"
  type: boolean
  inputBinding:
    prefix: --indvDepthMin
- id: in_in_dv_depth_max
  doc: ": Specify maximum depth(inclusive); of a sample to be\nincluded in analysis"
  type: boolean
  inputBinding:
    prefix: --indvDepthMax
- id: in_in_dv_qualm_in
  doc: ": Specify minimum depth(inclusive); of a sample to be\nincluded in analysis"
  type: boolean
  inputBinding:
    prefix: --indvQualMin
- id: in_single
  doc: ": Single variant tests, choose from: score, wald, exact,\nfamScore, famLrt,\
    \ famGrammarGamma, firth"
  type: boolean
  inputBinding:
    prefix: --single
- id: in_burden
  doc: ": Burden tests, choose from: cmc, zeggini, mb, exactCMC,\nrarecover, cmat,\
    \ cmcWald"
  type: boolean
  inputBinding:
    prefix: --burden
- id: in_vt
  doc: ': Variable threshold tests, choose from: price, analytic'
  type: boolean
  inputBinding:
    prefix: --vt
- id: in_kernel
  doc: ': Kernal-based tests, choose from: SKAT, KBAC, FamSKAT,'
  type: boolean
  inputBinding:
    prefix: --kernel
- id: in_kinship
  doc: ": Specify a kinship file for autosomal analysis, use\nvcf2kinship to generate"
  type: boolean
  inputBinding:
    prefix: --kinship
- id: in_x_hemi_kinship
  doc: ': Provide kinship for the chromosome X hemizygote region'
  type: boolean
  inputBinding:
    prefix: --xHemiKinship
- id: in_kinship_eigen
  doc: ": Specify eigen decomposition results of a kinship file\nfor autosomal analysis"
  type: boolean
  inputBinding:
    prefix: --kinshipEigen
- id: in_x_hemi_kinship_eigen
  doc: ": Specify eigen decomposition results of a kinship file\nfor X analysis"
  type: boolean
  inputBinding:
    prefix: --xHemiKinshipEigen
- id: in_bolt_plink
  doc: ': Specify a prefix of binary PLINK inputs for BoltLMM'
  type: boolean
  inputBinding:
    prefix: --boltPlink
- id: in_bolt_plink_no_check
  doc: ': Not checking MAF and missingness for binary PLINK file'
  type: boolean
  inputBinding:
    prefix: --boltPlinkNoCheck
- id: in_gene_file
  doc: ': Specify a gene file (for burden tests);'
  type: boolean
  inputBinding:
    prefix: --geneFile
- id: in_gene
  doc: ': Specify which genes to test'
  type: boolean
  inputBinding:
    prefix: --gene
- id: in_setlist
  doc: ': Specify a list to test (for burden tests);'
  type: boolean
  inputBinding:
    prefix: --setList
- id: in_set_file
  doc: ": Specify a list file (for burden tests, first 2 columns:\nsetName chr:beg-end);"
  type: boolean
  inputBinding:
    prefix: --setFile
- id: in_set
  doc: ': Specify which set to test (1st column);'
  type: boolean
  inputBinding:
    prefix: --set
- id: in_freq_upper
  doc: ": Specify upper minor allele frequency bound to be\nincluded in analysis"
  type: boolean
  inputBinding:
    prefix: --freqUpper
- id: in_freq_lower
  doc: ": Specify lower minor allele frequency bound to be\nincluded in analysis"
  type: boolean
  inputBinding:
    prefix: --freqLower
- id: in_impute
  doc: ': Impute missing genotype (default:mean):  mean, hwe, and'
  type: boolean
  inputBinding:
    prefix: --impute
- id: in_condition
  doc: ': Specify markers to be conditions (specify range);'
  type: boolean
  inputBinding:
    prefix: --condition
- id: in_no_web
  doc: ': Skip checking new version'
  type: boolean
  inputBinding:
    prefix: --noweb
- id: in_hide_co_var
  doc: ': Surpress output lines of covariates'
  type: boolean
  inputBinding:
    prefix: --hide-covar
- id: in_num_thread
  doc: ': Specify number of threads (default:1)'
  type: boolean
  inputBinding:
    prefix: --numThread
- id: in_output_id
  doc: ': Output VCF IDs in single-variant assocition results'
  type: boolean
  inputBinding:
    prefix: --outputID
- id: in_format_dot
  doc: '--rangeFile: Specify the file containing ranges, please use'
  type: string
  inputBinding:
    position: 0
- id: in_ska_to
  doc: '--meta: Meta-analysis related functions to generate summary'
  type: string
  inputBinding:
    position: 0
- id: in_drop
  doc: '--imputePheno: Impute phenotype to mean of those have genotypes but no'
  type: string
  inputBinding:
    position: 0
- id: in_phenotypes
  doc: '--imputeCov: Impute each covariate to its mean, instead of drop'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rvtest
