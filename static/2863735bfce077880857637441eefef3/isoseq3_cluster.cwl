class: CommandLineTool
id: isoseq3_cluster.cwl
inputs:
- id: poa_cov
  doc: INT   Maximum number of CCS reads used for POA consensus. [10]
  type: boolean
  inputBinding:
    prefix: --poa-cov
- id: use_qvs
  doc: Use CCS QVs, sets --poa-cov 100.
  type: boolean
  inputBinding:
    prefix: --use-qvs
- id: min_sub_reads_split
  doc: INT   Subread threshold for HQ/LQ split, only works with --use-qvs. [7]
  type: boolean
  inputBinding:
    prefix: --min-subreads-split
- id: split_bam
  doc: INT   Split BAM output files into at maximum N files; 0 means no splitting
    [0]
  type: boolean
  inputBinding:
    prefix: --split-bam
- id: singletons
  doc: Output FLNCs that could not be clustered.
  type: boolean
  inputBinding:
    prefix: --singletons
- id: num_threads
  doc: INT   Number of threads to use, 0 means autodetection. [0]
  type: boolean
  inputBinding:
    prefix: --num-threads
- id: log_level
  doc: 'STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]'
  type: boolean
  inputBinding:
    prefix: --log-level
- id: log_file
  doc: FILE  Log to a file, instead of stderr.
  type: boolean
  inputBinding:
    prefix: --log-file
- id: verbose
  doc: Use verbose output.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- isoseq3
- cluster
