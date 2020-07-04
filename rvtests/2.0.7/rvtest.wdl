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
    Boolean? m_pheno
    Boolean? pheno_name
    Boolean? qtl
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
    Boolean? range_file
    Boolean? site_file
    Boolean? site_depth_min
    Boolean? site_depth_max
    Boolean? site_mac_min
    Boolean? an_no_type
    Boolean? in_dv_depth_min
    Boolean? in_dv_depth_max
    Boolean? in_dv_qualm_in
    Boolean? single
    Boolean? burden
    Boolean? vt
    Boolean? kernel
    Boolean? metaanalysis_related_functions
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
    Boolean? impute_pheno
    Boolean? impute_cov
    Boolean? condition
    Boolean? no_web
    Boolean? hide_co_var
    Boolean? num_thread
    Boolean? output_id
  }
  command <<<
    rvtest \
      ~{true="--inVcf" false="" in_vcf} \
      ~{true="--inBgen" false="" in_bg_en} \
      ~{true="--inBgenSample" false="" in_bg_en_sample} \
      ~{true="--inKgg" false="" ink_gg} \
      ~{true="--out" false="" out} \
      ~{true="--outputRaw" false="" output_raw} \
      ~{true="--covar" false="" co_var} \
      ~{true="--covar-name" false="" co_var_name} \
      ~{true="--sex" false="" sex} \
      ~{true="--pheno" false="" pheno} \
      ~{true="--inverseNormal" false="" inverse_normal} \
      ~{true="--mpheno" false="" m_pheno} \
      ~{true="--pheno-name" false="" pheno_name} \
      ~{true="--qtl" false="" qtl} \
      ~{true="--multiplePheno" false="" multiple_pheno} \
      ~{true="--dosage" false="" dosage} \
      ~{true="--multipleAllele" false="" multiple_allele} \
      ~{true="--xLabel" false="" xlabel} \
      ~{true="--xParRegion" false="" x_par_region} \
      ~{true="--peopleIncludeID" false="" people_include_id} \
      ~{true="--peopleIncludeFile" false="" people_include_file} \
      ~{true="--peopleExcludeID" false="" people_exclude_id} \
      ~{true="--peopleExcludeFile" false="" people_exclude_file} \
      ~{true="--rangeList" false="" range_list} \
      ~{true="--rangeFile" false="" range_file} \
      ~{true="--siteFile" false="" site_file} \
      ~{true="--siteDepthMin" false="" site_depth_min} \
      ~{true="--siteDepthMax" false="" site_depth_max} \
      ~{true="--siteMACMin" false="" site_mac_min} \
      ~{true="--annoType" false="" an_no_type} \
      ~{true="--indvDepthMin" false="" in_dv_depth_min} \
      ~{true="--indvDepthMax" false="" in_dv_depth_max} \
      ~{true="--indvQualMin" false="" in_dv_qualm_in} \
      ~{true="--single" false="" single} \
      ~{true="--burden" false="" burden} \
      ~{true="--vt" false="" vt} \
      ~{true="--kernel" false="" kernel} \
      ~{true="--meta" false="" metaanalysis_related_functions} \
      ~{true="--kinship" false="" kinship} \
      ~{true="--xHemiKinship" false="" x_hemi_kinship} \
      ~{true="--kinshipEigen" false="" kinship_eigen} \
      ~{true="--xHemiKinshipEigen" false="" x_hemi_kinship_eigen} \
      ~{true="--boltPlink" false="" bolt_plink} \
      ~{true="--boltPlinkNoCheck" false="" bolt_plink_no_check} \
      ~{true="--geneFile" false="" gene_file} \
      ~{true="--gene" false="" gene} \
      ~{true="--setList" false="" setlist} \
      ~{true="--setFile" false="" set_file} \
      ~{true="--set" false="" set} \
      ~{true="--freqUpper" false="" freq_upper} \
      ~{true="--freqLower" false="" freq_lower} \
      ~{true="--impute" false="" impute} \
      ~{true="--imputePheno" false="" impute_pheno} \
      ~{true="--imputeCov" false="" impute_cov} \
      ~{true="--condition" false="" condition} \
      ~{true="--noweb" false="" no_web} \
      ~{true="--hide-covar" false="" hide_co_var} \
      ~{true="--numThread" false="" num_thread} \
      ~{true="--outputID" false="" output_id}
  >>>
  parameter_meta {
    in_vcf: ": Input VCF File"
    in_bg_en: ": Input BGEN File"
    in_bg_en_sample: ": Input Sample IDs for the BGEN File"
    ink_gg: ": Input KGG File"
    out: ": Output prefix"
    output_raw: ": Output genotypes, phenotype, covariates(if any); and collapsed genotype to tabular files"
    co_var: ": Specify covariate file"
    co_var_name: ": Specify the column name in covariate file to be included in analysis"
    sex: ": Include sex (5th column in the PED file) as a covariate"
    pheno: ": Specify phenotype file"
    inverse_normal: ": Transform phenotype like normal distribution"
    m_pheno: ": Specify which phenotype column to read (default: 1);"
    pheno_name: ": Specify which phenotype column to read by header"
    qtl: ": Treat phenotype as quantitative trait"
    multiple_pheno: ": Specify aa template file for analyses of more than one phenotype"
    dosage: ": Specify which dosage tag to use. (e.g. EC or DS);"
    multiple_allele: ": Support multi-allelic genotypes"
    xlabel: ": Specify X chromosome label (default: 23|X);"
    x_par_region: ": Specify PAR region (default: hg19);, can be build number e.g. hg38, b37; or specify region, e.g. '60001-2699520,154931044-155260560'"
    people_include_id: ": List IDs of people that will be included in study"
    people_include_file: ": From given file, set IDs of people that will be included in study"
    people_exclude_id: ": List IDs of people that will be included in study"
    people_exclude_file: ": From given file, set IDs of people that will be included in study"
    range_list: ": Specify some ranges to use, please use chr:begin-end format."
    range_file: ": Specify the file containing ranges, please use chr:begin-end format."
    site_file: ": Specify the file containing sites to include, please use \"chr pos\" format."
    site_depth_min: ": Specify minimum depth(inclusive); to be included in analysis"
    site_depth_max: ": Specify maximum depth(inclusive); to be included in analysis"
    site_mac_min: ": Specify minimum Minor Allele Count(inclusive); to be included in analysis"
    an_no_type: ": Specify annotation type that is followed by ANNO= in the VCF INFO field, regular expression is allowed"
    in_dv_depth_min: ": Specify minimum depth(inclusive); of a sample to be included in analysis"
    in_dv_depth_max: ": Specify maximum depth(inclusive); of a sample to be included in analysis"
    in_dv_qualm_in: ": Specify minimum depth(inclusive); of a sample to be included in analysis"
    single: ": Single variant tests, choose from: score, wald, exact, famScore, famLrt, famGrammarGamma, firth"
    burden: ": Burden tests, choose from: cmc, zeggini, mb, exactCMC, rarecover, cmat, cmcWald"
    vt: ": Variable threshold tests, choose from: price, analytic"
    kernel: ": Kernal-based tests, choose from: SKAT, KBAC, FamSKAT, SKATO"
    metaanalysis_related_functions: ": Meta-analysis related functions to generate summary statistics, choose from: score, cov, dominant, recessive"
    kinship: ": Specify a kinship file for autosomal analysis, use vcf2kinship to generate"
    x_hemi_kinship: ": Provide kinship for the chromosome X hemizygote region"
    kinship_eigen: ": Specify eigen decomposition results of a kinship file for autosomal analysis"
    x_hemi_kinship_eigen: ": Specify eigen decomposition results of a kinship file for X analysis"
    bolt_plink: ": Specify a prefix of binary PLINK inputs for BoltLMM"
    bolt_plink_no_check: ": Not checking MAF and missingness for binary PLINK file"
    gene_file: ": Specify a gene file (for burden tests);"
    gene: ": Specify which genes to test"
    setlist: ": Specify a list to test (for burden tests);"
    set_file: ": Specify a list file (for burden tests, first 2 columns: setName chr:beg-end);"
    set: ": Specify which set to test (1st column);"
    freq_upper: ": Specify upper minor allele frequency bound to be included in analysis"
    freq_lower: ": Specify lower minor allele frequency bound to be included in analysis"
    impute: ": Impute missing genotype (default:mean):  mean, hwe, and drop"
    impute_pheno: ": Impute phenotype to mean of those have genotypes but no phenotypes"
    impute_cov: ": Impute each covariate to its mean, instead of drop samples with missing covariates"
    condition: ": Specify markers to be conditions (specify range);"
    no_web: ": Skip checking new version"
    hide_co_var: ": Surpress output lines of covariates"
    num_thread: ": Specify number of threads (default:1)"
    output_id: ": Output VCF IDs in single-variant assocition results"
  }
}