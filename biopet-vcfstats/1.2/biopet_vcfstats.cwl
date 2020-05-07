class: CommandLineTool
id: biopet_vcfstats.cwl
inputs:
- id: log_level
  doc: "Level of log information printed. Possible levels: 'debug', 'info', 'warn',\
    \ 'error'"
  type: string
  inputBinding:
    prefix: --log_level
- id: input_file
  doc: Input VCF file (required)
  type: File
  inputBinding:
    prefix: --inputFile
- id: reference_file
  doc: Fasta reference which was used to call input VCF (required)
  type: File
  inputBinding:
    prefix: --referenceFile
- id: output_dir
  doc: Path to directory for output (required)
  type: File
  inputBinding:
    prefix: --outputDir
- id: intervals
  doc: Path to interval (BED) file (optional)
  type: File
  inputBinding:
    prefix: --intervals
- id: info_tag
  doc: Summarize these info tags
  type: string
  inputBinding:
    prefix: --infoTag
- id: genotype_tag
  doc: Summarize these genotype tags
  type: string
  inputBinding:
    prefix: --genotypeTag
- id: sample_to_sample_min_depth
  doc: Minimal depth require to consider sample to sample comparison
  type: string
  inputBinding:
    prefix: --sampleToSampleMinDepth
- id: binsize
  doc: Binsize in estimated base pairs
  type: string
  inputBinding:
    prefix: --binSize
- id: max_contigs_in_single_job
  doc: Max number of bins to be combined, default is 250
  type: string
  inputBinding:
    prefix: --maxContigsInSingleJob
- id: write_bin_stats
  doc: Write bin statistics. Default False
  type: boolean
  inputBinding:
    prefix: --writeBinStats
- id: local_threads
  doc: Number of local threads to use
  type: string
  inputBinding:
    prefix: --localThreads
- id: not_write_contig_stats
  doc: Number of local threads to use
  type: boolean
  inputBinding:
    prefix: --notWriteContigStats
- id: skip_general
  doc: Skipping general stats
  type: boolean
  inputBinding:
    prefix: --skipGeneral
- id: skip_genotype
  doc: Skipping genotype stats
  type: boolean
  inputBinding:
    prefix: --skipGenotype
- id: skip_sample_distributions
  doc: Skipping sample distributions stats
  type: boolean
  inputBinding:
    prefix: --skipSampleDistributions
- id: skip_sample_compare
  doc: Skipping sample compare
  type: boolean
  inputBinding:
    prefix: --skipSampleCompare
- id: repartition
  doc: Repartition after reading records (only in spark mode)
  type: boolean
  inputBinding:
    prefix: --repartition
- id: execute_modules_as_jobs
  doc: Execute modules as jobs (only in spark mode)
  type: boolean
  inputBinding:
    prefix: --executeModulesAsJobs
- id: spark_master
  doc: Spark master to use
  type: string
  inputBinding:
    prefix: --sparkMaster
- id: spark_executor_memory
  doc: Spark executor memory to use
  type: string
  inputBinding:
    prefix: --sparkExecutorMemory
- id: spark_config_value
  doc: :<key>=<value> Add values to the spark config
  type: boolean
  inputBinding:
    prefix: --sparkConfigValue
outputs: []
cwlVersion: v1.1
baseCommand:
- biopet-vcfstats
