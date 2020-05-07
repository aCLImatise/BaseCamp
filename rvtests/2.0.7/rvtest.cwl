class: CommandLineTool
id: rvtest.cwl
inputs:
- id: in_vcf
  doc: ': Input VCF File'
  type: boolean
  inputBinding:
    prefix: --inVcf
- id: in_bg_en
  doc: ': Input BGEN File'
  type: boolean
  inputBinding:
    prefix: --inBgen
- id: in_bg_en_sample
  doc: ': Input Sample IDs for the BGEN File'
  type: boolean
  inputBinding:
    prefix: --inBgenSample
- id: ink_gg
  doc: ': Input KGG File'
  type: boolean
  inputBinding:
    prefix: --inKgg
- id: out
  doc: ': Output prefix'
  type: boolean
  inputBinding:
    prefix: --out
- id: output_raw
  doc: ': Output genotypes, phenotype, covariates(if any); and collapsed genotype
    to tabular files'
  type: boolean
  inputBinding:
    prefix: --outputRaw
- id: co_var
  doc: ': Specify covariate file'
  type: boolean
  inputBinding:
    prefix: --covar
- id: co_var_name
  doc: ': Specify the column name in covariate file to be included in analysis'
  type: boolean
  inputBinding:
    prefix: --covar-name
- id: sex
  doc: ': Include sex (5th column in the PED file) as a covariate'
  type: boolean
  inputBinding:
    prefix: --sex
- id: pheno
  doc: ': Specify phenotype file'
  type: boolean
  inputBinding:
    prefix: --pheno
- id: inverse_normal
  doc: ': Transform phenotype like normal distribution'
  type: boolean
  inputBinding:
    prefix: --inverseNormal
- id: m_pheno
  doc: ': Specify which phenotype column to read (default: 1);'
  type: boolean
  inputBinding:
    prefix: --mpheno
- id: pheno_name
  doc: ': Specify which phenotype column to read by header'
  type: boolean
  inputBinding:
    prefix: --pheno-name
- id: qtl
  doc: ': Treat phenotype as quantitative trait'
  type: boolean
  inputBinding:
    prefix: --qtl
- id: multiple_pheno
  doc: ': Specify aa template file for analyses of more than one phenotype'
  type: boolean
  inputBinding:
    prefix: --multiplePheno
- id: dosage
  doc: ': Specify which dosage tag to use. (e.g. EC or DS);'
  type: boolean
  inputBinding:
    prefix: --dosage
- id: multiple_allele
  doc: ': Support multi-allelic genotypes'
  type: boolean
  inputBinding:
    prefix: --multipleAllele
- id: xlabel
  doc: ': Specify X chromosome label (default: 23|X);'
  type: boolean
  inputBinding:
    prefix: --xLabel
- id: x_par_region
  doc: ": Specify PAR region (default: hg19);, can be build number e.g. hg38, b37;\
    \ or specify region, e.g. '60001-2699520,154931044-155260560'"
  type: boolean
  inputBinding:
    prefix: --xParRegion
- id: people_include_id
  doc: ': List IDs of people that will be included in study'
  type: boolean
  inputBinding:
    prefix: --peopleIncludeID
- id: people_include_file
  doc: ': From given file, set IDs of people that will be included in study'
  type: boolean
  inputBinding:
    prefix: --peopleIncludeFile
- id: people_exclude_id
  doc: ': List IDs of people that will be included in study'
  type: boolean
  inputBinding:
    prefix: --peopleExcludeID
- id: people_exclude_file
  doc: ': From given file, set IDs of people that will be included in study'
  type: boolean
  inputBinding:
    prefix: --peopleExcludeFile
- id: range_list
  doc: ': Specify some ranges to use, please use chr:begin-end format.'
  type: boolean
  inputBinding:
    prefix: --rangeList
- id: range_file
  doc: ': Specify the file containing ranges, please use chr:begin-end format.'
  type: boolean
  inputBinding:
    prefix: --rangeFile
- id: site_file
  doc: ': Specify the file containing sites to include, please use "chr pos" format.'
  type: boolean
  inputBinding:
    prefix: --siteFile
- id: site_depth_min
  doc: ': Specify minimum depth(inclusive); to be included in analysis'
  type: boolean
  inputBinding:
    prefix: --siteDepthMin
- id: site_depth_max
  doc: ': Specify maximum depth(inclusive); to be included in analysis'
  type: boolean
  inputBinding:
    prefix: --siteDepthMax
- id: site_mac_min
  doc: ': Specify minimum Minor Allele Count(inclusive); to be included in analysis'
  type: boolean
  inputBinding:
    prefix: --siteMACMin
- id: an_no_type
  doc: ': Specify annotation type that is followed by ANNO= in the VCF INFO field,
    regular expression is allowed'
  type: boolean
  inputBinding:
    prefix: --annoType
- id: in_dv_depth_min
  doc: ': Specify minimum depth(inclusive); of a sample to be included in analysis'
  type: boolean
  inputBinding:
    prefix: --indvDepthMin
- id: in_dv_depth_max
  doc: ': Specify maximum depth(inclusive); of a sample to be included in analysis'
  type: boolean
  inputBinding:
    prefix: --indvDepthMax
- id: in_dv_qualm_in
  doc: ': Specify minimum depth(inclusive); of a sample to be included in analysis'
  type: boolean
  inputBinding:
    prefix: --indvQualMin
- id: single
  doc: ': Single variant tests, choose from: score, wald, exact, famScore, famLrt,
    famGrammarGamma, firth'
  type: boolean
  inputBinding:
    prefix: --single
- id: burden
  doc: ': Burden tests, choose from: cmc, zeggini, mb, exactCMC, rarecover, cmat,
    cmcWald'
  type: boolean
  inputBinding:
    prefix: --burden
- id: vt
  doc: ': Variable threshold tests, choose from: price, analytic'
  type: boolean
  inputBinding:
    prefix: --vt
- id: kernel
  doc: ': Kernal-based tests, choose from: SKAT, KBAC, FamSKAT, SKATO'
  type: boolean
  inputBinding:
    prefix: --kernel
- id: meta
  doc: ': Meta-analysis related functions to generate summary statistics, choose from:
    score, cov, dominant, recessive'
  type: boolean
  inputBinding:
    prefix: --meta
- id: kinship
  doc: ': Specify a kinship file for autosomal analysis, use vcf2kinship to generate'
  type: boolean
  inputBinding:
    prefix: --kinship
- id: x_hemi_kinship
  doc: ': Provide kinship for the chromosome X hemizygote region'
  type: boolean
  inputBinding:
    prefix: --xHemiKinship
- id: kinship_eigen
  doc: ': Specify eigen decomposition results of a kinship file for autosomal analysis'
  type: boolean
  inputBinding:
    prefix: --kinshipEigen
- id: x_hemi_kinship_eigen
  doc: ': Specify eigen decomposition results of a kinship file for X analysis'
  type: boolean
  inputBinding:
    prefix: --xHemiKinshipEigen
- id: bolt_plink
  doc: ': Specify a prefix of binary PLINK inputs for BoltLMM'
  type: boolean
  inputBinding:
    prefix: --boltPlink
- id: bolt_plink_no_check
  doc: ': Not checking MAF and missingness for binary PLINK file'
  type: boolean
  inputBinding:
    prefix: --boltPlinkNoCheck
- id: gene_file
  doc: ': Specify a gene file (for burden tests);'
  type: boolean
  inputBinding:
    prefix: --geneFile
- id: gene
  doc: ': Specify which genes to test'
  type: boolean
  inputBinding:
    prefix: --gene
- id: setlist
  doc: ': Specify a list to test (for burden tests);'
  type: boolean
  inputBinding:
    prefix: --setList
- id: set_file
  doc: ': Specify a list file (for burden tests, first 2 columns: setName chr:beg-end);'
  type: boolean
  inputBinding:
    prefix: --setFile
- id: set
  doc: ': Specify which set to test (1st column);'
  type: boolean
  inputBinding:
    prefix: --set
- id: freq_upper
  doc: ': Specify upper minor allele frequency bound to be included in analysis'
  type: boolean
  inputBinding:
    prefix: --freqUpper
- id: freq_lower
  doc: ': Specify lower minor allele frequency bound to be included in analysis'
  type: boolean
  inputBinding:
    prefix: --freqLower
- id: impute
  doc: ': Impute missing genotype (default:mean):  mean, hwe, and drop'
  type: boolean
  inputBinding:
    prefix: --impute
- id: impute_pheno
  doc: ': Impute phenotype to mean of those have genotypes but no phenotypes'
  type: boolean
  inputBinding:
    prefix: --imputePheno
- id: impute_cov
  doc: ': Impute each covariate to its mean, instead of drop samples with missing
    covariates'
  type: boolean
  inputBinding:
    prefix: --imputeCov
- id: condition
  doc: ': Specify markers to be conditions (specify range);'
  type: boolean
  inputBinding:
    prefix: --condition
- id: no_web
  doc: ': Skip checking new version'
  type: boolean
  inputBinding:
    prefix: --noweb
- id: hide_co_var
  doc: ': Surpress output lines of covariates'
  type: boolean
  inputBinding:
    prefix: --hide-covar
- id: num_thread
  doc: ': Specify number of threads (default:1)'
  type: boolean
  inputBinding:
    prefix: --numThread
- id: output_id
  doc: ': Output VCF IDs in single-variant assocition results'
  type: boolean
  inputBinding:
    prefix: --outputID
outputs: []
cwlVersion: v1.1
baseCommand:
- rvtest
