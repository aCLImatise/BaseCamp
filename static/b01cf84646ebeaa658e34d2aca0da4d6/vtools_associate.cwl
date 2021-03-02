class: CommandLineTool
id: vtools_associate.cwl
inputs:
- id: in_jobs
  doc: Number of processes to carry out association tests.
  type: long?
  inputBinding:
    prefix: --jobs
- id: in_mpi
  doc: "Submit vtools association job to cluster, please check\nbash script."
  type: boolean?
  inputBinding:
    prefix: -mpi
- id: in_verbosity
  doc: "Output error and warning (0), info (1), debug (2) and\ntrace (3) information\
    \ to standard output (default to\n1)."
  type: string?
  inputBinding:
    prefix: --verbosity
- id: in_covariates
  doc: "[COVARIATES [COVARIATES ...]]\nOptional phenotypes that will be passed to\
    \ statistical\ntests as covariates. Values of these phenotypes should\nbe integer\
    \ or float."
  type: boolean?
  inputBinding:
    prefix: --covariates
- id: in_var_info
  doc: "[VAR_INFO [VAR_INFO ...]], --var-info [VAR_INFO [VAR_INFO ...]]\nOptional\
    \ variant information fields (e.g. minor allele\nfrequency from 1000 genomes project)\
    \ that will be\npassed to statistical tests. The fields could be any\nannotation\
    \ fields of with integer or float values,\nincluding those from used annotation\
    \ databases (use\n\"vtools show fields\" to see a list of usable fields)."
  type: boolean?
  inputBinding:
    prefix: --var_info
- id: in_geno_info
  doc: "[GENO_INFO [GENO_INFO ...]], --geno-info [GENO_INFO [GENO_INFO ...]]\nOptional\
    \ genotype fields (e.g. quality score of\ngenotype calls, cf. \"vtools show genotypes\"\
    ) that will\nbe passed to statistical tests. Note that the fields\nshould exist\
    \ for all samples that are tested."
  type: boolean?
  inputBinding:
    prefix: --geno_info
- id: in_geno_name
  doc: "Field name of genotype, default to 'GT'. If another\nfield name is specified,\
    \ for example if imputation\nscores are available as 'DS' (dosage), then the given\n\
    field 'DS' will be used as genotype data for\nassociation analysis."
  type: string?
  inputBinding:
    prefix: --geno_name
- id: in_methods
  doc: "Method of one or more association tests. Parameters\nfor each method should\
    \ be specified together as a\nquoted long argument (e.g. --methods \"m --alternative\n\
    2\" \"m1 --permute 1000\"), although the common method\nparameters can be specified\
    \ separately, as long as\nthey do not conflict with command arguments. (e.g.\n\
    --methods m1 m2 -p 1000 is equivalent to --methods \"m1\n-p 1000\" \"m2 -p 1000\"\
    .). You can use command 'vtools\nshow tests' for a list of association tests,\
    \ and\n'vtools show test TST' for details about a test.\nCustomized association\
    \ tests can be specified as\nmod_name.test_name where mod_name should be a Python\n\
    module (system wide or in the current directory), and\ntest_name should be a subclass\
    \ of NullTest."
  type: string[]
  inputBinding:
    prefix: --methods
- id: in_group_variants_separated
  doc: "[GROUP_BY [GROUP_BY ...]], --group_by [GROUP_BY [GROUP_BY ...]], --group-by\
    \ [GROUP_BY [GROUP_BY ...]]\nGroup variants by fields. If specified, variants\
    \ will\nbe separated into groups and are tested one by one."
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_limiting_variants_samples
  doc: "[COND [COND ...]], --samples [COND [COND ...]]\nLimiting variants from samples\
    \ that match conditions\nthat use columns shown in command 'vtools show sample'\n\
    (e.g. 'aff=1', 'filename like \"MG%\"'). Each line of\nthe sample table (vtools\
    \ show samples) is considered\nas samples. If genotype of a physical sample is\n\
    scattered into multiple samples (e.g. imported\nchromosome by chromosome), they\
    \ should be merged using\ncommand vtools admin."
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_genotypes
  doc: "[COND [COND ...]]\nLimiting genotypes to those matching conditions that\n\
    use columns shown in command 'vtools show genotypes'\n(e.g. 'GQ>15'). Genotypes\
    \ failing such conditions will\nbe regarded as missing genotypes."
  type: boolean?
  inputBinding:
    prefix: --genotypes
- id: in_discard_samples
  doc: "[EXPR [EXPR ...]], --discard-samples [EXPR [EXPR ...]]\nDiscard samples that\
    \ match specified conditions within\neach test group (defined by parameter --group_by).\n\
    Currently only expressions in the form of \"%(NA)>p\" is\nprovidedted to remove\
    \ samples that have more 100*p\npercent of missing values."
  type: boolean?
  inputBinding:
    prefix: --discard_samples
- id: in_discard_variants
  doc: "[EXPR [EXPR ...]], --discard-variants [EXPR [EXPR ...]]\nDiscard variant sites\
    \ based on specified conditions\nwithin each test group. Currently only expressions\
    \ in\nthe form of '%(NA)>p' is provided to remove variant\nsites that have more\
    \ than 100*p percent of missing\ngenotypes. Note that this filter will be applied\
    \ after\n\"--discard_samples\" is applied, if the latter also is\nspecified."
  type: boolean?
  inputBinding:
    prefix: --discard_variants
- id: in_to_db
  doc: "Name of a database to which results from association\ntests will be written.\
    \ Groups with existing results in\nthe database will be ignored unless parameter\
    \ --force\nis used."
  type: string?
  inputBinding:
    prefix: --to_db
- id: in_delimiter
  doc: "Delimiter use to separate columns of output. The\ndefault output uses multiple\
    \ spaces to align columns\nof output. Use '-d,' for csv output, or -d'\\t' for\n\
    tab-delimited output."
  type: string?
  inputBinding:
    prefix: --delimiter
- id: in_force
  doc: "Analyze all groups including those that have recorded\nresults in the result\
    \ database.\n"
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_variants
  doc: Table of variants to be tested.
  type: string
  inputBinding:
    position: 0
- id: in_phenotypes
  doc: "A list of phenotypes that will be passed to the\nassociation statistics calculator.\
    \ Currently only a\nsingle phenotype is allowed."
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vtools
- associate
