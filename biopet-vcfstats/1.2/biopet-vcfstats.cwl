#!/usr/bin/env cwl-runner

baseCommand:
- biopet-vcfstats
class: CommandLineTool
cwlVersion: v1.0
id: biopet-vcfstats
inputs:
- doc: "Level of log information printed. Possible levels: 'debug', 'info', 'warn',\
    \ 'error'"
  id: log_level
  inputBinding:
    prefix: --log_level
  type: string
- doc: Input VCF file (required)
  id: input_file
  inputBinding:
    prefix: --inputFile
  type: File
- doc: Fasta reference which was used to call input VCF (required)
  id: reference_file
  inputBinding:
    prefix: --referenceFile
  type: File
- doc: Path to directory for output (required)
  id: output_dir
  inputBinding:
    prefix: --outputDir
  type: File
- doc: Path to interval (BED) file (optional)
  id: intervals
  inputBinding:
    prefix: --intervals
  type: File
- doc: Summarize these info tags
  id: info_tag
  inputBinding:
    prefix: --infoTag
  type: string
- doc: Summarize these genotype tags
  id: genotype_tag
  inputBinding:
    prefix: --genotypeTag
  type: string
- doc: Minimal depth require to consider sample to sample comparison
  id: sample_to_sample_min_depth
  inputBinding:
    prefix: --sampleToSampleMinDepth
  type: string
- doc: Binsize in estimated base pairs
  id: binsize
  inputBinding:
    prefix: --binSize
  type: string
- doc: Max number of bins to be combined, default is 250
  id: max_contigs_in_single_job
  inputBinding:
    prefix: --maxContigsInSingleJob
  type: string
- doc: Write bin statistics. Default False
  id: write_bin_stats
  inputBinding:
    prefix: --writeBinStats
  type: boolean
- doc: Number of local threads to use
  id: local_threads
  inputBinding:
    prefix: --localThreads
  type: string
- doc: Number of local threads to use
  id: not_write_contig_stats
  inputBinding:
    prefix: --notWriteContigStats
  type: boolean
- doc: Skipping general stats
  id: skip_general
  inputBinding:
    prefix: --skipGeneral
  type: boolean
- doc: Skipping genotype stats
  id: skip_genotype
  inputBinding:
    prefix: --skipGenotype
  type: boolean
- doc: Skipping sample distributions stats
  id: skip_sample_distributions
  inputBinding:
    prefix: --skipSampleDistributions
  type: boolean
- doc: Skipping sample compare
  id: skip_sample_compare
  inputBinding:
    prefix: --skipSampleCompare
  type: boolean
- doc: Repartition after reading records (only in spark mode)
  id: repartition
  inputBinding:
    prefix: --repartition
  type: boolean
- doc: Execute modules as jobs (only in spark mode)
  id: execute_modules_as_jobs
  inputBinding:
    prefix: --executeModulesAsJobs
  type: boolean
- doc: Spark master to use
  id: spark_master
  inputBinding:
    prefix: --sparkMaster
  type: string
- doc: Spark executor memory to use
  id: spark_executor_memory
  inputBinding:
    prefix: --sparkExecutorMemory
  type: string
- doc: :<key>=<value> Add values to the spark config
  id: spark_config_value
  inputBinding:
    prefix: --sparkConfigValue
  type: boolean
