version 1.0

task VtoolsAssociate {
  input {
    Int? jobs
    Boolean? mpi
    String? verbosity
    Boolean? covariates
    Boolean? var_info
    Boolean? geno_info
    String? geno_name
    Array[String] methods
    Boolean? group_variants_fields
    Boolean? limiting_variants_samples
    Boolean? genotypes
    Boolean? discard_samples
    Boolean? discard_variants
    String? to_db
    String? delimiter
    Boolean? force
    String variants
    String phenotypes
  }
  command <<<
    vtools associate \
      ~{variants} \
      ~{phenotypes} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if (mpi) then "-mpi" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if (covariates) then "--covariates" else ""} \
      ~{if (var_info) then "--var_info" else ""} \
      ~{if (geno_info) then "--geno_info" else ""} \
      ~{if defined(geno_name) then ("--geno_name " +  '"' + geno_name + '"') else ""} \
      ~{if defined(methods) then ("--methods " +  '"' + methods + '"') else ""} \
      ~{if (group_variants_fields) then "-g" else ""} \
      ~{if (limiting_variants_samples) then "-s" else ""} \
      ~{if (genotypes) then "--genotypes" else ""} \
      ~{if (discard_samples) then "--discard_samples" else ""} \
      ~{if (discard_variants) then "--discard_variants" else ""} \
      ~{if defined(to_db) then ("--to_db " +  '"' + to_db + '"') else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  parameter_meta {
    jobs: "Number of processes to carry out association tests."
    mpi: "Submit vtools association job to cluster, please check\\nbash script."
    verbosity: "Output error and warning (0), info (1), debug (2) and\\ntrace (3) information to standard output (default to\\n1)."
    covariates: "[COVARIATES [COVARIATES ...]]\\nOptional phenotypes that will be passed to statistical\\ntests as covariates. Values of these phenotypes should\\nbe integer or float."
    var_info: "[VAR_INFO [VAR_INFO ...]], --var-info [VAR_INFO [VAR_INFO ...]]\\nOptional variant information fields (e.g. minor allele\\nfrequency from 1000 genomes project) that will be\\npassed to statistical tests. The fields could be any\\nannotation fields of with integer or float values,\\nincluding those from used annotation databases (use\\n\\\"vtools show fields\\\" to see a list of usable fields)."
    geno_info: "[GENO_INFO [GENO_INFO ...]], --geno-info [GENO_INFO [GENO_INFO ...]]\\nOptional genotype fields (e.g. quality score of\\ngenotype calls, cf. \\\"vtools show genotypes\\\") that will\\nbe passed to statistical tests. Note that the fields\\nshould exist for all samples that are tested."
    geno_name: "Field name of genotype, default to 'GT'. If another\\nfield name is specified, for example if imputation\\nscores are available as 'DS' (dosage), then the given\\nfield 'DS' will be used as genotype data for\\nassociation analysis."
    methods: "Method of one or more association tests. Parameters\\nfor each method should be specified together as a\\nquoted long argument (e.g. --methods \\\"m --alternative\\n2\\\" \\\"m1 --permute 1000\\\"), although the common method\\nparameters can be specified separately, as long as\\nthey do not conflict with command arguments. (e.g.\\n--methods m1 m2 -p 1000 is equivalent to --methods \\\"m1\\n-p 1000\\\" \\\"m2 -p 1000\\\".). You can use command 'vtools\\nshow tests' for a list of association tests, and\\n'vtools show test TST' for details about a test.\\nCustomized association tests can be specified as\\nmod_name.test_name where mod_name should be a Python\\nmodule (system wide or in the current directory), and\\ntest_name should be a subclass of NullTest."
    group_variants_fields: "[GROUP_BY [GROUP_BY ...]], --group_by [GROUP_BY [GROUP_BY ...]], --group-by [GROUP_BY [GROUP_BY ...]]\\nGroup variants by fields. If specified, variants will\\nbe separated into groups and are tested one by one."
    limiting_variants_samples: "[COND [COND ...]], --samples [COND [COND ...]]\\nLimiting variants from samples that match conditions\\nthat use columns shown in command 'vtools show sample'\\n(e.g. 'aff=1', 'filename like \\\"MG%\\\"'). Each line of\\nthe sample table (vtools show samples) is considered\\nas samples. If genotype of a physical sample is\\nscattered into multiple samples (e.g. imported\\nchromosome by chromosome), they should be merged using\\ncommand vtools admin."
    genotypes: "[COND [COND ...]]\\nLimiting genotypes to those matching conditions that\\nuse columns shown in command 'vtools show genotypes'\\n(e.g. 'GQ>15'). Genotypes failing such conditions will\\nbe regarded as missing genotypes."
    discard_samples: "[EXPR [EXPR ...]], --discard-samples [EXPR [EXPR ...]]\\nDiscard samples that match specified conditions within\\neach test group (defined by parameter --group_by).\\nCurrently only expressions in the form of \\\"%(NA)>p\\\" is\\nprovidedted to remove samples that have more 100*p\\npercent of missing values."
    discard_variants: "[EXPR [EXPR ...]], --discard-variants [EXPR [EXPR ...]]\\nDiscard variant sites based on specified conditions\\nwithin each test group. Currently only expressions in\\nthe form of '%(NA)>p' is provided to remove variant\\nsites that have more than 100*p percent of missing\\ngenotypes. Note that this filter will be applied after\\n\\\"--discard_samples\\\" is applied, if the latter also is\\nspecified."
    to_db: "Name of a database to which results from association\\ntests will be written. Groups with existing results in\\nthe database will be ignored unless parameter --force\\nis used."
    delimiter: "Delimiter use to separate columns of output. The\\ndefault output uses multiple spaces to align columns\\nof output. Use '-d,' for csv output, or -d'\\t' for\\ntab-delimited output."
    force: "Analyze all groups including those that have recorded\\nresults in the result database.\\n"
    variants: "Table of variants to be tested."
    phenotypes: "A list of phenotypes that will be passed to the\\nassociation statistics calculator. Currently only a\\nsingle phenotype is allowed."
  }
  output {
    File out_stdout = stdout()
  }
}