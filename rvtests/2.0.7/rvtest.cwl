#!/usr/bin/env cwl-runner

baseCommand:
- rvtest
class: CommandLineTool
cwlVersion: v1.0
id: rvtest
inputs:
- doc: ': Input VCF File'
  id: in_vcf
  inputBinding:
    prefix: --inVcf
  type: boolean
- doc: ': Input BGEN File'
  id: in_bg_en
  inputBinding:
    prefix: --inBgen
  type: boolean
- doc: ': Input Sample IDs for the BGEN File'
  id: in_bg_en_sample
  inputBinding:
    prefix: --inBgenSample
  type: boolean
- doc: ': Input KGG File'
  id: ink_gg
  inputBinding:
    prefix: --inKgg
  type: boolean
- doc: ': Output prefix'
  id: out
  inputBinding:
    prefix: --out
  type: boolean
- doc: ': Output genotypes, phenotype, covariates(if any); and collapsed genotype
    to tabular files'
  id: output_raw
  inputBinding:
    prefix: --outputRaw
  type: boolean
- doc: ': Specify covariate file'
  id: co_var
  inputBinding:
    prefix: --covar
  type: boolean
- doc: ': Specify the column name in covariate file to be included in analysis'
  id: co_var_name
  inputBinding:
    prefix: --covar-name
  type: boolean
- doc: ': Include sex (5th column in the PED file) as a covariate'
  id: sex
  inputBinding:
    prefix: --sex
  type: boolean
- doc: ': Specify phenotype file'
  id: pheno
  inputBinding:
    prefix: --pheno
  type: boolean
- doc: ': Transform phenotype like normal distribution'
  id: inverse_normal
  inputBinding:
    prefix: --inverseNormal
  type: boolean
- doc: ': Specify which phenotype column to read (default: 1);'
  id: m_pheno
  inputBinding:
    prefix: --mpheno
  type: boolean
- doc: ': Specify which phenotype column to read by header'
  id: pheno_name
  inputBinding:
    prefix: --pheno-name
  type: boolean
- doc: ': Treat phenotype as quantitative trait'
  id: qtl
  inputBinding:
    prefix: --qtl
  type: boolean
- doc: ': Specify aa template file for analyses of more than one phenotype'
  id: multiple_pheno
  inputBinding:
    prefix: --multiplePheno
  type: boolean
- doc: ': Specify which dosage tag to use. (e.g. EC or DS);'
  id: dosage
  inputBinding:
    prefix: --dosage
  type: boolean
- doc: ': Support multi-allelic genotypes'
  id: multiple_allele
  inputBinding:
    prefix: --multipleAllele
  type: boolean
- doc: ': Specify X chromosome label (default: 23|X);'
  id: xlabel
  inputBinding:
    prefix: --xLabel
  type: boolean
- doc: ": Specify PAR region (default: hg19);, can be build number e.g. hg38, b37;\
    \ or specify region, e.g. '60001-2699520,154931044-155260560'"
  id: x_par_region
  inputBinding:
    prefix: --xParRegion
  type: boolean
- doc: ': List IDs of people that will be included in study'
  id: people_include_id
  inputBinding:
    prefix: --peopleIncludeID
  type: boolean
- doc: ': From given file, set IDs of people that will be included in study'
  id: people_include_file
  inputBinding:
    prefix: --peopleIncludeFile
  type: boolean
- doc: ': List IDs of people that will be included in study'
  id: people_exclude_id
  inputBinding:
    prefix: --peopleExcludeID
  type: boolean
- doc: ': From given file, set IDs of people that will be included in study'
  id: people_exclude_file
  inputBinding:
    prefix: --peopleExcludeFile
  type: boolean
- doc: ': Specify some ranges to use, please use chr:begin-end format.'
  id: range_list
  inputBinding:
    prefix: --rangeList
  type: boolean
- doc: ': Specify the file containing ranges, please use chr:begin-end format.'
  id: range_file
  inputBinding:
    prefix: --rangeFile
  type: boolean
- doc: ': Specify the file containing sites to include, please use "chr pos" format.'
  id: site_file
  inputBinding:
    prefix: --siteFile
  type: boolean
- doc: ': Specify minimum depth(inclusive); to be included in analysis'
  id: site_depth_min
  inputBinding:
    prefix: --siteDepthMin
  type: boolean
- doc: ': Specify maximum depth(inclusive); to be included in analysis'
  id: site_depth_max
  inputBinding:
    prefix: --siteDepthMax
  type: boolean
- doc: ': Specify minimum Minor Allele Count(inclusive); to be included in analysis'
  id: site_mac_min
  inputBinding:
    prefix: --siteMACMin
  type: boolean
- doc: ': Specify annotation type that is followed by ANNO= in the VCF INFO field,
    regular expression is allowed'
  id: an_no_type
  inputBinding:
    prefix: --annoType
  type: boolean
- doc: ': Specify minimum depth(inclusive); of a sample to be included in analysis'
  id: in_dv_depth_min
  inputBinding:
    prefix: --indvDepthMin
  type: boolean
- doc: ': Specify maximum depth(inclusive); of a sample to be included in analysis'
  id: in_dv_depth_max
  inputBinding:
    prefix: --indvDepthMax
  type: boolean
- doc: ': Specify minimum depth(inclusive); of a sample to be included in analysis'
  id: in_dv_qualm_in
  inputBinding:
    prefix: --indvQualMin
  type: boolean
- doc: ': Single variant tests, choose from: score, wald, exact, famScore, famLrt,
    famGrammarGamma, firth'
  id: single
  inputBinding:
    prefix: --single
  type: boolean
- doc: ': Burden tests, choose from: cmc, zeggini, mb, exactCMC, rarecover, cmat,
    cmcWald'
  id: burden
  inputBinding:
    prefix: --burden
  type: boolean
- doc: ': Variable threshold tests, choose from: price, analytic'
  id: vt
  inputBinding:
    prefix: --vt
  type: boolean
- doc: ': Kernal-based tests, choose from: SKAT, KBAC, FamSKAT, SKATO'
  id: kernel
  inputBinding:
    prefix: --kernel
  type: boolean
- doc: ': Meta-analysis related functions to generate summary statistics, choose from:
    score, cov, dominant, recessive'
  id: meta
  inputBinding:
    prefix: --meta
  type: boolean
- doc: ': Specify a kinship file for autosomal analysis, use vcf2kinship to generate'
  id: kinship
  inputBinding:
    prefix: --kinship
  type: boolean
- doc: ': Provide kinship for the chromosome X hemizygote region'
  id: x_hemi_kinship
  inputBinding:
    prefix: --xHemiKinship
  type: boolean
- doc: ': Specify eigen decomposition results of a kinship file for autosomal analysis'
  id: kinship_eigen
  inputBinding:
    prefix: --kinshipEigen
  type: boolean
- doc: ': Specify eigen decomposition results of a kinship file for X analysis'
  id: x_hemi_kinship_eigen
  inputBinding:
    prefix: --xHemiKinshipEigen
  type: boolean
- doc: ': Specify a prefix of binary PLINK inputs for BoltLMM'
  id: bolt_plink
  inputBinding:
    prefix: --boltPlink
  type: boolean
- doc: ': Not checking MAF and missingness for binary PLINK file'
  id: bolt_plink_no_check
  inputBinding:
    prefix: --boltPlinkNoCheck
  type: boolean
- doc: ': Specify a gene file (for burden tests);'
  id: gene_file
  inputBinding:
    prefix: --geneFile
  type: boolean
- doc: ': Specify which genes to test'
  id: gene
  inputBinding:
    prefix: --gene
  type: boolean
- doc: ': Specify a list to test (for burden tests);'
  id: setlist
  inputBinding:
    prefix: --setList
  type: boolean
- doc: ': Specify a list file (for burden tests, first 2 columns: setName chr:beg-end);'
  id: set_file
  inputBinding:
    prefix: --setFile
  type: boolean
- doc: ': Specify which set to test (1st column);'
  id: set
  inputBinding:
    prefix: --set
  type: boolean
- doc: ': Specify upper minor allele frequency bound to be included in analysis'
  id: freq_upper
  inputBinding:
    prefix: --freqUpper
  type: boolean
- doc: ': Specify lower minor allele frequency bound to be included in analysis'
  id: freq_lower
  inputBinding:
    prefix: --freqLower
  type: boolean
- doc: ': Impute missing genotype (default:mean):  mean, hwe, and drop'
  id: impute
  inputBinding:
    prefix: --impute
  type: boolean
- doc: ': Impute phenotype to mean of those have genotypes but no phenotypes'
  id: impute_pheno
  inputBinding:
    prefix: --imputePheno
  type: boolean
- doc: ': Impute each covariate to its mean, instead of drop samples with missing
    covariates'
  id: impute_cov
  inputBinding:
    prefix: --imputeCov
  type: boolean
- doc: ': Specify markers to be conditions (specify range);'
  id: condition
  inputBinding:
    prefix: --condition
  type: boolean
- doc: ': Skip checking new version'
  id: no_web
  inputBinding:
    prefix: --noweb
  type: boolean
- doc: ': Surpress output lines of covariates'
  id: hide_co_var
  inputBinding:
    prefix: --hide-covar
  type: boolean
- doc: ': Specify number of threads (default:1)'
  id: num_thread
  inputBinding:
    prefix: --numThread
  type: boolean
- doc: ': Output VCF IDs in single-variant assocition results'
  id: output_id
  inputBinding:
    prefix: --outputID
  type: boolean
