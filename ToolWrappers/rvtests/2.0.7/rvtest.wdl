version 1.0

task Rvtest {
  input {
    Boolean? in_vcf
    Boolean? in_bg_en
    Boolean? in_bg_en_sample
    Boolean? ink_gg
    Boolean? out
    Boolean? output_raw
    Boolean? co_var
    Boolean? co_var_name
    Boolean? sex
    Boolean? pheno
    Boolean? inverse_normal
    Boolean? use_residual_as_phenotype
    Boolean? m_pheno
    Boolean? multiple_pheno
    Boolean? dosage
    Boolean? multiple_allele
    Boolean? xlabel
    Boolean? x_par_region
    Boolean? people_include_id
    Boolean? people_include_file
    Boolean? people_exclude_id
    Boolean? people_exclude_file
    Boolean? range_list
    Boolean? site_file
    Boolean? site_depth_min
    Boolean? an_no_type
    Boolean? in_dv_depth_min
    Boolean? in_dv_depth_max
    Boolean? in_dv_qualm_in
    Boolean? single
    Boolean? burden
    Boolean? vt
    Boolean? kernel
    Boolean? kinship
    Boolean? x_hemi_kinship
    Boolean? kinship_eigen
    Boolean? x_hemi_kinship_eigen
    Boolean? bolt_plink
    Boolean? bolt_plink_no_check
    Boolean? gene_file
    Boolean? gene
    Boolean? setlist
    Boolean? set_file
    Boolean? set
    Boolean? freq_upper
    Boolean? freq_lower
    Boolean? impute
    Boolean? condition
    Boolean? no_web
    Boolean? hide_co_var
    Boolean? num_thread
    Boolean? output_id
    String format_dot
    String ska_to
    String drop
    String phenotypes
  }
  command <<<
    rvtest \
      ~{format_dot} \
      ~{ska_to} \
      ~{drop} \
      ~{phenotypes} \
      ~{if (in_vcf) then "--inVcf" else ""} \
      ~{if (in_bg_en) then "--inBgen" else ""} \
      ~{if (in_bg_en_sample) then "--inBgenSample" else ""} \
      ~{if (ink_gg) then "--inKgg" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (output_raw) then "--outputRaw" else ""} \
      ~{if (co_var) then "--covar" else ""} \
      ~{if (co_var_name) then "--covar-name" else ""} \
      ~{if (sex) then "--sex" else ""} \
      ~{if (pheno) then "--pheno" else ""} \
      ~{if (inverse_normal) then "--inverseNormal" else ""} \
      ~{if (use_residual_as_phenotype) then "--useResidualAsPhenotype" else ""} \
      ~{if (m_pheno) then "--mpheno" else ""} \
      ~{if (multiple_pheno) then "--multiplePheno" else ""} \
      ~{if (dosage) then "--dosage" else ""} \
      ~{if (multiple_allele) then "--multipleAllele" else ""} \
      ~{if (xlabel) then "--xLabel" else ""} \
      ~{if (x_par_region) then "--xParRegion" else ""} \
      ~{if (people_include_id) then "--peopleIncludeID" else ""} \
      ~{if (people_include_file) then "--peopleIncludeFile" else ""} \
      ~{if (people_exclude_id) then "--peopleExcludeID" else ""} \
      ~{if (people_exclude_file) then "--peopleExcludeFile" else ""} \
      ~{if (range_list) then "--rangeList" else ""} \
      ~{if (site_file) then "--siteFile" else ""} \
      ~{if (site_depth_min) then "--siteDepthMin" else ""} \
      ~{if (an_no_type) then "--annoType" else ""} \
      ~{if (in_dv_depth_min) then "--indvDepthMin" else ""} \
      ~{if (in_dv_depth_max) then "--indvDepthMax" else ""} \
      ~{if (in_dv_qualm_in) then "--indvQualMin" else ""} \
      ~{if (single) then "--single" else ""} \
      ~{if (burden) then "--burden" else ""} \
      ~{if (vt) then "--vt" else ""} \
      ~{if (kernel) then "--kernel" else ""} \
      ~{if (kinship) then "--kinship" else ""} \
      ~{if (x_hemi_kinship) then "--xHemiKinship" else ""} \
      ~{if (kinship_eigen) then "--kinshipEigen" else ""} \
      ~{if (x_hemi_kinship_eigen) then "--xHemiKinshipEigen" else ""} \
      ~{if (bolt_plink) then "--boltPlink" else ""} \
      ~{if (bolt_plink_no_check) then "--boltPlinkNoCheck" else ""} \
      ~{if (gene_file) then "--geneFile" else ""} \
      ~{if (gene) then "--gene" else ""} \
      ~{if (setlist) then "--setList" else ""} \
      ~{if (set_file) then "--setFile" else ""} \
      ~{if (set) then "--set" else ""} \
      ~{if (freq_upper) then "--freqUpper" else ""} \
      ~{if (freq_lower) then "--freqLower" else ""} \
      ~{if (impute) then "--impute" else ""} \
      ~{if (condition) then "--condition" else ""} \
      ~{if (no_web) then "--noweb" else ""} \
      ~{if (hide_co_var) then "--hide-covar" else ""} \
      ~{if (num_thread) then "--numThread" else ""} \
      ~{if (output_id) then "--outputID" else ""}
  >>>
  parameter_meta {
    in_vcf: ": Input VCF File"
    in_bg_en: ": Input BGEN File"
    in_bg_en_sample: ": Input Sample IDs for the BGEN File"
    ink_gg: ": Input KGG File"
    out: ": Output prefix"
    output_raw: ": Output genotypes, phenotype, covariates(if any); and\\ncollapsed genotype to tabular files"
    co_var: ": Specify covariate file"
    co_var_name: ": Specify the column name in covariate file to be\\nincluded in analysis"
    sex: ": Include sex (5th column in the PED file) as a covariate"
    pheno: ": Specify phenotype file"
    inverse_normal: ": Transform phenotype like normal distribution"
    use_residual_as_phenotype: ": Fit covariate ~ phenotype, use residual to replace\\nphenotype"
    m_pheno: ": Specify which phenotype column to read (default: 1);\\n--pheno-name: Specify which phenotype column to read by header\\n--qtl: Treat phenotype as quantitative trait"
    multiple_pheno: ": Specify aa template file for analyses of more than one\\nphenotype"
    dosage: ": Specify which dosage tag to use. (e.g. EC or DS);"
    multiple_allele: ": Support multi-allelic genotypes"
    xlabel: ": Specify X chromosome label (default: 23|X);"
    x_par_region: ": Specify PAR region (default: hg19);, can be build\\nnumber e.g. hg38, b37; or specify region, e.g.\\n'60001-2699520,154931044-155260560'"
    people_include_id: ": List IDs of people that will be included in study"
    people_include_file: ": From given file, set IDs of people that will be\\nincluded in study"
    people_exclude_id: ": List IDs of people that will be included in study"
    people_exclude_file: ": From given file, set IDs of people that will be\\nincluded in study"
    range_list: ": Specify some ranges to use, please use chr:begin-end"
    site_file: ": Specify the file containing sites to include, please\\nuse \\\"chr pos\\\" format."
    site_depth_min: ": Specify minimum depth(inclusive); to be included in"
    an_no_type: ": Specify annotation type that is followed by ANNO= in\\nthe VCF INFO field, regular expression is allowed"
    in_dv_depth_min: ": Specify minimum depth(inclusive); of a sample to be\\nincluded in analysis"
    in_dv_depth_max: ": Specify maximum depth(inclusive); of a sample to be\\nincluded in analysis"
    in_dv_qualm_in: ": Specify minimum depth(inclusive); of a sample to be\\nincluded in analysis"
    single: ": Single variant tests, choose from: score, wald, exact,\\nfamScore, famLrt, famGrammarGamma, firth"
    burden: ": Burden tests, choose from: cmc, zeggini, mb, exactCMC,\\nrarecover, cmat, cmcWald"
    vt: ": Variable threshold tests, choose from: price, analytic"
    kernel: ": Kernal-based tests, choose from: SKAT, KBAC, FamSKAT,"
    kinship: ": Specify a kinship file for autosomal analysis, use\\nvcf2kinship to generate"
    x_hemi_kinship: ": Provide kinship for the chromosome X hemizygote region"
    kinship_eigen: ": Specify eigen decomposition results of a kinship file\\nfor autosomal analysis"
    x_hemi_kinship_eigen: ": Specify eigen decomposition results of a kinship file\\nfor X analysis"
    bolt_plink: ": Specify a prefix of binary PLINK inputs for BoltLMM"
    bolt_plink_no_check: ": Not checking MAF and missingness for binary PLINK file"
    gene_file: ": Specify a gene file (for burden tests);"
    gene: ": Specify which genes to test"
    setlist: ": Specify a list to test (for burden tests);"
    set_file: ": Specify a list file (for burden tests, first 2 columns:\\nsetName chr:beg-end);"
    set: ": Specify which set to test (1st column);"
    freq_upper: ": Specify upper minor allele frequency bound to be\\nincluded in analysis"
    freq_lower: ": Specify lower minor allele frequency bound to be\\nincluded in analysis"
    impute: ": Impute missing genotype (default:mean):  mean, hwe, and"
    condition: ": Specify markers to be conditions (specify range);"
    no_web: ": Skip checking new version"
    hide_co_var: ": Surpress output lines of covariates"
    num_thread: ": Specify number of threads (default:1)"
    output_id: ": Output VCF IDs in single-variant assocition results"
    format_dot: "--rangeFile: Specify the file containing ranges, please use"
    ska_to: "--meta: Meta-analysis related functions to generate summary"
    drop: "--imputePheno: Impute phenotype to mean of those have genotypes but no"
    phenotypes: "--imputeCov: Impute each covariate to its mean, instead of drop"
  }
  output {
    File out_stdout = stdout()
  }
}