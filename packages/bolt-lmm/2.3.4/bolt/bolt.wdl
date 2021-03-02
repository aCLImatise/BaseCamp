version 1.0

task Bolt {
  input {
    Boolean? helpfull
    String? b_file
    String? b_file_gz
    File? bed
    String? bim
    File? genetic_map_file
    File? remove
    File? exclude
    Int? max_missing_per_snp
    Int? max_missing_per_indiv
    File? pheno_file
    String? pheno_col
    Boolean? pheno_use_fam
    Int? co_var_col
    Int? q_co_var_col
    Boolean? co_var_use_missing_indic
    Boolean? reml
    Boolean? lmm
    Boolean? lmm_inf_only
    Boolean? lmm_force_non_inf
    File? models_nps
    Float? ld_scores_file
    Int? num_threads
    File? stats_file
    File? dosage_fidi_id_file
    File? stats_file_dosage_snps
    Int? impute_two_fidi_id_file
    Int? impute_two_min_maf
    File? b_gen_file
    File? sample_file
    File? b_gen_sample_file_list
    Int? b_gen_min_maf
    Int? b_gen_min_info
    File? stats_file_b_gen_snps
    File? stats_file_dosage_two_snps
    String files
    String phenotype
  }
  command <<<
    bolt \
      ~{files} \
      ~{phenotype} \
      ~{if (helpfull) then "--helpFull" else ""} \
      ~{if defined(b_file) then ("--bfile " +  '"' + b_file + '"') else ""} \
      ~{if defined(b_file_gz) then ("--bfilegz " +  '"' + b_file_gz + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(bim) then ("--bim " +  '"' + bim + '"') else ""} \
      ~{if defined(genetic_map_file) then ("--geneticMapFile " +  '"' + genetic_map_file + '"') else ""} \
      ~{if defined(remove) then ("--remove " +  '"' + remove + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(max_missing_per_snp) then ("--maxMissingPerSnp " +  '"' + max_missing_per_snp + '"') else ""} \
      ~{if defined(max_missing_per_indiv) then ("--maxMissingPerIndiv " +  '"' + max_missing_per_indiv + '"') else ""} \
      ~{if defined(pheno_file) then ("--phenoFile " +  '"' + pheno_file + '"') else ""} \
      ~{if defined(pheno_col) then ("--phenoCol " +  '"' + pheno_col + '"') else ""} \
      ~{if (pheno_use_fam) then "--phenoUseFam" else ""} \
      ~{if defined(co_var_col) then ("--covarCol " +  '"' + co_var_col + '"') else ""} \
      ~{if defined(q_co_var_col) then ("--qCovarCol " +  '"' + q_co_var_col + '"') else ""} \
      ~{if (co_var_use_missing_indic) then "--covarUseMissingIndic" else ""} \
      ~{if (reml) then "--reml" else ""} \
      ~{if (lmm) then "--lmm" else ""} \
      ~{if (lmm_inf_only) then "--lmmInfOnly" else ""} \
      ~{if (lmm_force_non_inf) then "--lmmForceNonInf" else ""} \
      ~{if defined(models_nps) then ("--modelSnps " +  '"' + models_nps + '"') else ""} \
      ~{if defined(ld_scores_file) then ("--LDscoresFile " +  '"' + ld_scores_file + '"') else ""} \
      ~{if defined(num_threads) then ("--numThreads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(stats_file) then ("--statsFile " +  '"' + stats_file + '"') else ""} \
      ~{if defined(dosage_fidi_id_file) then ("--dosageFidIidFile " +  '"' + dosage_fidi_id_file + '"') else ""} \
      ~{if defined(stats_file_dosage_snps) then ("--statsFileDosageSnps " +  '"' + stats_file_dosage_snps + '"') else ""} \
      ~{if defined(impute_two_fidi_id_file) then ("--impute2FidIidFile " +  '"' + impute_two_fidi_id_file + '"') else ""} \
      ~{if defined(impute_two_min_maf) then ("--impute2MinMAF " +  '"' + impute_two_min_maf + '"') else ""} \
      ~{if defined(b_gen_file) then ("--bgenFile " +  '"' + b_gen_file + '"') else ""} \
      ~{if defined(sample_file) then ("--sampleFile " +  '"' + sample_file + '"') else ""} \
      ~{if defined(b_gen_sample_file_list) then ("--bgenSampleFileList " +  '"' + b_gen_sample_file_list + '"') else ""} \
      ~{if defined(b_gen_min_maf) then ("--bgenMinMAF " +  '"' + b_gen_min_maf + '"') else ""} \
      ~{if defined(b_gen_min_info) then ("--bgenMinINFO " +  '"' + b_gen_min_info + '"') else ""} \
      ~{if defined(stats_file_b_gen_snps) then ("--statsFileBgenSnps " +  '"' + stats_file_b_gen_snps + '"') else ""} \
      ~{if defined(stats_file_dosage_two_snps) then ("--statsFileDosage2Snps " +  '"' + stats_file_dosage_two_snps + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bolt-lmm:2.3.4--hbe668fe_0"
  }
  parameter_meta {
    helpfull: "print help message with full option list"
    b_file: "prefix of PLINK .fam, .bim, .bed files"
    b_file_gz: "prefix of PLINK .fam.gz, .bim.gz, .bed.gz"
    bed: "PLINK .bed file(s); for >1, use multiple"
    bim: "/or {i:j} expansion"
    genetic_map_file: "Oxford-format file for interpolating genetic\\ndistances: tables/genetic_map_hg##.txt.gz"
    remove: "file(s) listing individuals to ignore (no\\nheader; FID IID must be first two columns)"
    exclude: "file(s) listing SNPs to ignore (no header;\\nSNP ID must be first column)"
    max_missing_per_snp: "(=0.1)   QC filter: max missing rate per SNP"
    max_missing_per_indiv: "(=0.1) QC filter: max missing rate per person"
    pheno_file: "phenotype file (header required; FID IID must\\nbe first two columns)"
    pheno_col: "phenotype column header"
    pheno_use_fam: "use last (6th) column of .fam file as"
    co_var_col: "categorical covariate column(s); for >1, use\\nmultiple --covarCol and/or {i:j} expansion"
    q_co_var_col: "quantitative covariate column(s); for >1, use\\nmultiple --qCovarCol and/or {i:j} expansion"
    co_var_use_missing_indic: "include samples with missing covariates in\\nanalysis via missing indicator method\\n(default: ignore such samples)"
    reml: "run variance components analysis to precisely\\nestimate heritability (but not compute assoc\\nstats)"
    lmm: "compute assoc stats under the inf model and\\nwith Bayesian non-inf prior (VB approx), if\\npower gain expected"
    lmm_inf_only: "compute mixed model assoc stats under the\\ninfinitesimal model"
    lmm_force_non_inf: "compute non-inf assoc stats even if BOLT-LMM\\nexpects no power gain"
    models_nps: "file(s) listing SNPs to use in model (i.e.,\\nGRM) (default: use all non-excluded SNPs)"
    ld_scores_file: "LD Scores for calibration of Bayesian assoc\\nstats: tables/LDSCORE.1000G_EUR.tab.gz"
    num_threads: "(=1)           number of computational threads"
    stats_file: "output file for assoc stats at PLINK"
    dosage_fidi_id_file: "file listing FIDs and IIDs of samples in\\ndosageFile(s), one line per sample"
    stats_file_dosage_snps: "output file for assoc stats at dosage format"
    impute_two_fidi_id_file: "file listing FIDs and IIDs of samples in\\nIMPUTE2 files, one line per sample"
    impute_two_min_maf: "(=0)        MAF threshold on IMPUTE2 genotypes; lower-MAF\\nSNPs will be ignored"
    b_gen_file: "file(s) containing Oxford BGEN-format\\ngenotypes to test for association"
    sample_file: "file containing Oxford sample file\\ncorresponding to BGEN file(s)"
    b_gen_sample_file_list: "list of [bgen sample] file pairs containing\\nBGEN imputed variants to test for association"
    b_gen_min_maf: "(=0)           MAF threshold on Oxford BGEN-format\\ngenotypes; lower-MAF SNPs will be ignored"
    b_gen_min_info: "(=0)          INFO threshold on Oxford BGEN-format\\ngenotypes; lower-INFO SNPs will be ignored"
    stats_file_b_gen_snps: "output file for assoc stats at BGEN-format"
    stats_file_dosage_two_snps: "output file for assoc stats at 2-dosage\\nformat genotypes\\n"
    files: "--fam arg                       PLINK .fam file (note: file names ending in "
    phenotype: "--covarFile arg                 covariate file (header required; FID IID must"
  }
  output {
    File out_stdout = stdout()
    File out_stats_file = "${in_stats_file}"
    File out_stats_file_dosage_snps = "${in_stats_file_dosage_snps}"
    File out_stats_file_b_gen_snps = "${in_stats_file_b_gen_snps}"
    File out_stats_file_dosage_two_snps = "${in_stats_file_dosage_two_snps}"
  }
}