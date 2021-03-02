class: CommandLineTool
id: biopet_vcfstats.cwl
inputs:
- id: in_log_level
  doc: "Level of log information printed. Possible levels: 'debug', 'info', 'warn',\
    \ 'error'"
  type: string?
  inputBinding:
    prefix: --log_level
- id: in_input_file
  doc: Input VCF file (required)
  type: File?
  inputBinding:
    prefix: --inputFile
- id: in_reference_file
  doc: Fasta reference which was used to call input VCF (required)
  type: File?
  inputBinding:
    prefix: --referenceFile
- id: in_output_dir
  doc: Path to directory for output (required)
  type: File?
  inputBinding:
    prefix: --outputDir
- id: in_intervals
  doc: Path to interval (BED) file (optional)
  type: File?
  inputBinding:
    prefix: --intervals
- id: in_info_tag
  doc: Summarize these info tags
  type: string?
  inputBinding:
    prefix: --infoTag
- id: in_genotype_tag
  doc: Summarize these genotype tags
  type: string?
  inputBinding:
    prefix: --genotypeTag
- id: in_sample_to_sample_min_depth
  doc: Minimal depth require to consider sample to sample comparison
  type: string?
  inputBinding:
    prefix: --sampleToSampleMinDepth
- id: in_binsize
  doc: Binsize in estimated base pairs
  type: string?
  inputBinding:
    prefix: --binSize
- id: in_max_contigs_in_single_job
  doc: Max number of bins to be combined, default is 250
  type: long?
  inputBinding:
    prefix: --maxContigsInSingleJob
- id: in_write_bin_stats
  doc: Write bin statistics. Default False
  type: boolean?
  inputBinding:
    prefix: --writeBinStats
- id: in_local_threads
  doc: Number of local threads to use
  type: long?
  inputBinding:
    prefix: --localThreads
- id: in_not_write_contig_stats
  doc: Number of local threads to use
  type: boolean?
  inputBinding:
    prefix: --notWriteContigStats
- id: in_skip_general
  doc: Skipping general stats
  type: boolean?
  inputBinding:
    prefix: --skipGeneral
- id: in_skip_genotype
  doc: Skipping genotype stats
  type: boolean?
  inputBinding:
    prefix: --skipGenotype
- id: in_skip_sample_distributions
  doc: Skipping sample distributions stats
  type: boolean?
  inputBinding:
    prefix: --skipSampleDistributions
- id: in_skip_sample_compare
  doc: Skipping sample compare
  type: boolean?
  inputBinding:
    prefix: --skipSampleCompare
- id: in_repartition
  doc: Repartition after reading records (only in spark mode)
  type: boolean?
  inputBinding:
    prefix: --repartition
- id: in_execute_modules_as_jobs
  doc: Execute modules as jobs (only in spark mode)
  type: boolean?
  inputBinding:
    prefix: --executeModulesAsJobs
- id: in_spark_master
  doc: Spark master to use
  type: string?
  inputBinding:
    prefix: --sparkMaster
- id: in_spark_executor_memory
  doc: Spark executor memory to use
  type: string?
  inputBinding:
    prefix: --sparkExecutorMemory
- id: in_spark_config_value
  doc: ":<key>=<value>\nAdd values to the spark config\n"
  type: boolean?
  inputBinding:
    prefix: --sparkConfigValue
- id: in_vcf_stats
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Path to directory for output (required)
  type: File?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- biopet-vcfstats
