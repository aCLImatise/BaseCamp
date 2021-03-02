class: CommandLineTool
id: unicycler_check.cwl
inputs:
- id: in_sam
  doc: "Input SAM file of alignments (if this file doesn't\nexist, the alignment will\
    \ be performed with results\nsaved to this file - you can use the aligner\narguments\
    \ with this script)"
  type: File?
  inputBinding:
    prefix: --sam
- id: in_ref
  doc: FASTA file containing one or more reference
  type: File?
  inputBinding:
    prefix: --ref
- id: in_min_len
  doc: "Minimum alignment length (bp) - exclude alignments\nshorter than this length\
    \ (default: 100)"
  type: long?
  inputBinding:
    prefix: --min_len
- id: in_error_window_size
  doc: 'Window size for error summaries (default: 100)'
  type: long?
  inputBinding:
    prefix: --error_window_size
- id: in_depth_window_size
  doc: 'Window size for depth summaries (default: 100)'
  type: long?
  inputBinding:
    prefix: --depth_window_size
- id: in_error_rate_threshold
  doc: "Threshold for high error rates, expressed as the\nfraction between the mean\
    \ error rate and the random\nalignment error rate (default: 0.3)"
  type: double?
  inputBinding:
    prefix: --error_rate_threshold
- id: in_depth_p_val
  doc: "P-value for low/high depth thresholds (default:\n0.001)"
  type: double?
  inputBinding:
    prefix: --depth_p_val
- id: in_window_tables
  doc: "Path and/or prefix for table files summarising\nreference errors for reference\
    \ windows (default: do\nnot save window tables)"
  type: File?
  inputBinding:
    prefix: --window_tables
- id: in_base_tables
  doc: "Path and/or prefix for table files summarising\nreference errors at each base\
    \ (default: do not save\nbase tables)"
  type: File?
  inputBinding:
    prefix: --base_tables
- id: in_html
  doc: "Path for HTML report (default: do not save HTML\nreport)"
  type: File?
  inputBinding:
    prefix: --html
- id: in_threads
  doc: "Number of CPU threads used to align (default: the\nnumber of available CPUs)"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_verbosity
  doc: 'Level of stdout information (0 to 2) (default: 1)'
  type: long?
  inputBinding:
    prefix: --verbosity
- id: in_reads
  doc: ''
  type: string?
  inputBinding:
    prefix: --reads
- id: in_sequences
  doc: --reads READS           FASTQ file of long reads
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- unicycler_check
