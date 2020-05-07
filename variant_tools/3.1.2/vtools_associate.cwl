class: CommandLineTool
id: vtools_associate.cwl
inputs:
- id: variants
  doc: Table of variants to be tested.
  type: string
  inputBinding:
    position: 0
- id: phenotypes
  doc: A list of phenotypes that will be passed to the association statistics calculator.
    Currently only a single phenotype is allowed.
  type: string
  inputBinding:
    position: 1
- id: jobs
  doc: Number of processes to carry out association tests.
  type: string
  inputBinding:
    prefix: --jobs
- id: mpi
  doc: Submit vtools association job to cluster, please check bash script.
  type: boolean
  inputBinding:
    prefix: -mpi
- id: v
  doc: '{0,1,2,3}, --verbosity {0,1,2,3} Output error and warning (0), info (1), debug
    (2) and trace (3) information to standard output (default to 1).'
  type: boolean
  inputBinding:
    prefix: -v
- id: covariates
  doc: '[COVARIATES [COVARIATES ...]] Optional phenotypes that will be passed to statistical
    tests as covariates. Values of these phenotypes should be integer or float.'
  type: boolean
  inputBinding:
    prefix: --covariates
- id: var_info
  doc: '[VAR_INFO [VAR_INFO ...]], --var-info [VAR_INFO [VAR_INFO ...]] Optional variant
    information fields (e.g. minor allele frequency from 1000 genomes project) that
    will be passed to statistical tests. The fields could be any annotation fields
    of with integer or float values, including those from used annotation databases
    (use "vtools show fields" to see a list of usable fields).'
  type: boolean
  inputBinding:
    prefix: --var_info
- id: geno_info
  doc: '[GENO_INFO [GENO_INFO ...]], --geno-info [GENO_INFO [GENO_INFO ...]] Optional
    genotype fields (e.g. quality score of genotype calls, cf. "vtools show genotypes")
    that will be passed to statistical tests. Note that the fields should exist for
    all samples that are tested.'
  type: boolean
  inputBinding:
    prefix: --geno_info
- id: geno_name
  doc: Field name of genotype, default to 'GT'. If another field name is specified,
    for example if imputation scores are available as 'DS' (dosage), then the given
    field 'DS' will be used as genotype data for association analysis.
  type: string
  inputBinding:
    prefix: --geno_name
- id: methods
  doc: Method of one or more association tests. Parameters for each method should
    be specified together as a quoted long argument (e.g. --methods "m --alternative
    2" "m1 --permute 1000"), although the common method parameters can be specified
    separately, as long as they do not conflict with command arguments. (e.g. --methods
    m1 m2 -p 1000 is equivalent to --methods "m1 -p 1000" "m2 -p 1000".). You can
    use command 'vtools show tests' for a list of association tests, and 'vtools show
    test TST' for details about a test. Customized association tests can be specified
    as mod_name.test_name where mod_name should be a Python module (system wide or
    in the current directory), and test_name should be a subclass of NullTest.
  type: string[]
  inputBinding:
    prefix: --methods
- id: g
  doc: '[GROUP_BY [GROUP_BY ...]], --group_by [GROUP_BY [GROUP_BY ...]], --group-by
    [GROUP_BY [GROUP_BY ...]] Group variants by fields. If specified, variants will
    be separated into groups and are tested one by one.'
  type: boolean
  inputBinding:
    prefix: -g
- id: s
  doc: "[COND [COND ...]], --samples [COND [COND ...]] Limiting variants from samples\
    \ that match conditions that use columns shown in command 'vtools show sample'\
    \ (e.g. 'aff=1', 'filename like \"MG%\"'). Each line of the sample table (vtools\
    \ show samples) is considered as samples. If genotype of a physical sample is\
    \ scattered into multiple samples (e.g. imported chromosome by chromosome), they\
    \ should be merged using command vtools admin."
  type: boolean
  inputBinding:
    prefix: -s
- id: genotypes
  doc: "[COND [COND ...]] Limiting genotypes to those matching conditions that use\
    \ columns shown in command 'vtools show genotypes' (e.g. 'GQ>15'). Genotypes failing\
    \ such conditions will be regarded as missing genotypes."
  type: boolean
  inputBinding:
    prefix: --genotypes
- id: discard_samples
  doc: '[EXPR [EXPR ...]], --discard-samples [EXPR [EXPR ...]] Discard samples that
    match specified conditions within each test group (defined by parameter --group_by).
    Currently only expressions in the form of "%(NA)>p" is providedted to remove samples
    that have more 100*p percent of missing values.'
  type: boolean
  inputBinding:
    prefix: --discard_samples
- id: discard_variants
  doc: "[EXPR [EXPR ...]], --discard-variants [EXPR [EXPR ...]] Discard variant sites\
    \ based on specified conditions within each test group. Currently only expressions\
    \ in the form of '%(NA)>p' is provided to remove variant sites that have more\
    \ than 100*p percent of missing genotypes. Note that this filter will be applied\
    \ after \"--discard_samples\" is applied, if the latter also is specified."
  type: boolean
  inputBinding:
    prefix: --discard_variants
- id: to_db
  doc: Name of a database to which results from association tests will be written.
    Groups with existing results in the database will be ignored unless parameter
    --force is used.
  type: string
  inputBinding:
    prefix: --to_db
- id: delimiter
  doc: Delimiter use to separate columns of output. The default output uses multiple
    spaces to align columns of output. Use '-d,' for csv output, or -d'\t' for tab-delimited
    output.
  type: string
  inputBinding:
    prefix: --delimiter
- id: force
  doc: Analyze all groups including those that have recorded results in the result
    database.
  type: boolean
  inputBinding:
    prefix: --force
outputs: []
cwlVersion: v1.1
baseCommand:
- vtools
- associate
