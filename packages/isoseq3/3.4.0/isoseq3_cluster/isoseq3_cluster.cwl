class: CommandLineTool
id: isoseq3_cluster.cwl
inputs:
- id: in_poa_cov
  doc: INT   Maximum number of CCS reads used for POA consensus. [10]
  type: boolean?
  inputBinding:
    prefix: --poa-cov
- id: in_use_qvs
  doc: Use CCS QVs, sets --poa-cov 100.
  type: boolean?
  inputBinding:
    prefix: --use-qvs
- id: in_min_sub_reads_split
  doc: INT   Subread threshold for HQ/LQ split, only works with --use-qvs. [7]
  type: boolean?
  inputBinding:
    prefix: --min-subreads-split
- id: in_split_bam
  doc: INT   Split BAM output files into at maximum N files; 0 means no splitting
    [0]
  type: boolean?
  inputBinding:
    prefix: --split-bam
- id: in_singletons
  doc: Output FLNCs that could not be clustered.
  type: boolean?
  inputBinding:
    prefix: --singletons
- id: in_num_threads
  doc: INT   Number of threads to use, 0 means autodetection. [0]
  type: boolean?
  inputBinding:
    prefix: --num-threads
- id: in_log_level
  doc: 'STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]'
  type: boolean?
  inputBinding:
    prefix: --log-level
- id: in_log_file
  doc: FILE  Log to a file, instead of stderr.
  type: boolean?
  inputBinding:
    prefix: --log-file
- id: in_verbose
  doc: Use verbose output.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_iso_seq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_unpolished_dot_bam_vertical_line_xml
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_str
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_cluster
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_fl_ncdot_bam_vertical_line_xml
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_fl_nc
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_unpolished
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_or
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_consensus_read_set
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_transcript_set
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/isoseq3:3.4.0--0
cwlVersion: v1.1
baseCommand:
- isoseq3
- cluster
