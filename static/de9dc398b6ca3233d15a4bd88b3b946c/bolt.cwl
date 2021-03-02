class: CommandLineTool
id: bolt.cwl
inputs:
- id: in_helpfull
  doc: print help message with full option list
  type: boolean?
  inputBinding:
    prefix: --helpFull
- id: in_b_file
  doc: prefix of PLINK .fam, .bim, .bed files
  type: string?
  inputBinding:
    prefix: --bfile
- id: in_b_file_gz
  doc: prefix of PLINK .fam.gz, .bim.gz, .bed.gz
  type: string?
  inputBinding:
    prefix: --bfilegz
- id: in_bed
  doc: PLINK .bed file(s); for >1, use multiple
  type: File?
  inputBinding:
    prefix: --bed
- id: in_bim
  doc: /or {i:j} expansion
  type: string?
  inputBinding:
    prefix: --bim
- id: in_genetic_map_file
  doc: "Oxford-format file for interpolating genetic\ndistances: tables/genetic_map_hg##.txt.gz"
  type: File?
  inputBinding:
    prefix: --geneticMapFile
- id: in_remove
  doc: "file(s) listing individuals to ignore (no\nheader; FID IID must be first two\
    \ columns)"
  type: File?
  inputBinding:
    prefix: --remove
- id: in_exclude
  doc: "file(s) listing SNPs to ignore (no header;\nSNP ID must be first column)"
  type: File?
  inputBinding:
    prefix: --exclude
- id: in_max_missing_per_snp
  doc: '(=0.1)   QC filter: max missing rate per SNP'
  type: long?
  inputBinding:
    prefix: --maxMissingPerSnp
- id: in_max_missing_per_indiv
  doc: '(=0.1) QC filter: max missing rate per person'
  type: long?
  inputBinding:
    prefix: --maxMissingPerIndiv
- id: in_pheno_file
  doc: "phenotype file (header required; FID IID must\nbe first two columns)"
  type: File?
  inputBinding:
    prefix: --phenoFile
- id: in_pheno_col
  doc: phenotype column header
  type: string?
  inputBinding:
    prefix: --phenoCol
- id: in_pheno_use_fam
  doc: use last (6th) column of .fam file as
  type: boolean?
  inputBinding:
    prefix: --phenoUseFam
- id: in_co_var_col
  doc: "categorical covariate column(s); for >1, use\nmultiple --covarCol and/or {i:j}\
    \ expansion"
  type: long?
  inputBinding:
    prefix: --covarCol
- id: in_q_co_var_col
  doc: "quantitative covariate column(s); for >1, use\nmultiple --qCovarCol and/or\
    \ {i:j} expansion"
  type: long?
  inputBinding:
    prefix: --qCovarCol
- id: in_co_var_use_missing_indic
  doc: "include samples with missing covariates in\nanalysis via missing indicator\
    \ method\n(default: ignore such samples)"
  type: boolean?
  inputBinding:
    prefix: --covarUseMissingIndic
- id: in_reml
  doc: "run variance components analysis to precisely\nestimate heritability (but\
    \ not compute assoc\nstats)"
  type: boolean?
  inputBinding:
    prefix: --reml
- id: in_lmm
  doc: "compute assoc stats under the inf model and\nwith Bayesian non-inf prior (VB\
    \ approx), if\npower gain expected"
  type: boolean?
  inputBinding:
    prefix: --lmm
- id: in_lmm_inf_only
  doc: "compute mixed model assoc stats under the\ninfinitesimal model"
  type: boolean?
  inputBinding:
    prefix: --lmmInfOnly
- id: in_lmm_force_non_inf
  doc: "compute non-inf assoc stats even if BOLT-LMM\nexpects no power gain"
  type: boolean?
  inputBinding:
    prefix: --lmmForceNonInf
- id: in_models_nps
  doc: "file(s) listing SNPs to use in model (i.e.,\nGRM) (default: use all non-excluded\
    \ SNPs)"
  type: File?
  inputBinding:
    prefix: --modelSnps
- id: in_ld_scores_file
  doc: "LD Scores for calibration of Bayesian assoc\nstats: tables/LDSCORE.1000G_EUR.tab.gz"
  type: double?
  inputBinding:
    prefix: --LDscoresFile
- id: in_num_threads
  doc: (=1)           number of computational threads
  type: long?
  inputBinding:
    prefix: --numThreads
- id: in_stats_file
  doc: output file for assoc stats at PLINK
  type: File?
  inputBinding:
    prefix: --statsFile
- id: in_dosage_fidi_id_file
  doc: "file listing FIDs and IIDs of samples in\ndosageFile(s), one line per sample"
  type: File?
  inputBinding:
    prefix: --dosageFidIidFile
- id: in_stats_file_dosage_snps
  doc: output file for assoc stats at dosage format
  type: File?
  inputBinding:
    prefix: --statsFileDosageSnps
- id: in_impute_two_fidi_id_file
  doc: "file listing FIDs and IIDs of samples in\nIMPUTE2 files, one line per sample"
  type: long?
  inputBinding:
    prefix: --impute2FidIidFile
- id: in_impute_two_min_maf
  doc: "(=0)        MAF threshold on IMPUTE2 genotypes; lower-MAF\nSNPs will be ignored"
  type: long?
  inputBinding:
    prefix: --impute2MinMAF
- id: in_b_gen_file
  doc: "file(s) containing Oxford BGEN-format\ngenotypes to test for association"
  type: File?
  inputBinding:
    prefix: --bgenFile
- id: in_sample_file
  doc: "file containing Oxford sample file\ncorresponding to BGEN file(s)"
  type: File?
  inputBinding:
    prefix: --sampleFile
- id: in_b_gen_sample_file_list
  doc: "list of [bgen sample] file pairs containing\nBGEN imputed variants to test\
    \ for association"
  type: File?
  inputBinding:
    prefix: --bgenSampleFileList
- id: in_b_gen_min_maf
  doc: "(=0)           MAF threshold on Oxford BGEN-format\ngenotypes; lower-MAF SNPs\
    \ will be ignored"
  type: long?
  inputBinding:
    prefix: --bgenMinMAF
- id: in_b_gen_min_info
  doc: "(=0)          INFO threshold on Oxford BGEN-format\ngenotypes; lower-INFO\
    \ SNPs will be ignored"
  type: long?
  inputBinding:
    prefix: --bgenMinINFO
- id: in_stats_file_b_gen_snps
  doc: output file for assoc stats at BGEN-format
  type: File?
  inputBinding:
    prefix: --statsFileBgenSnps
- id: in_stats_file_dosage_two_snps
  doc: "output file for assoc stats at 2-dosage\nformat genotypes\n"
  type: File?
  inputBinding:
    prefix: --statsFileDosage2Snps
- id: in_files
  doc: '--fam arg                       PLINK .fam file (note: file names ending in '
  type: string
  inputBinding:
    position: 0
- id: in_phenotype
  doc: --covarFile arg                 covariate file (header required; FID IID must
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_stats_file
  doc: output file for assoc stats at PLINK
  type: File?
  outputBinding:
    glob: $(inputs.in_stats_file)
- id: out_stats_file_dosage_snps
  doc: output file for assoc stats at dosage format
  type: File?
  outputBinding:
    glob: $(inputs.in_stats_file_dosage_snps)
- id: out_stats_file_b_gen_snps
  doc: output file for assoc stats at BGEN-format
  type: File?
  outputBinding:
    glob: $(inputs.in_stats_file_b_gen_snps)
- id: out_stats_file_dosage_two_snps
  doc: "output file for assoc stats at 2-dosage\nformat genotypes\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_stats_file_dosage_two_snps)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bolt-lmm:2.3.4--hbe668fe_0
cwlVersion: v1.1
baseCommand:
- bolt
