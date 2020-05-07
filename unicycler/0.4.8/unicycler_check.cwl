class: CommandLineTool
id: unicycler_check.cwl
inputs:
- id: sam
  doc: Input SAM file of alignments (if this file doesn't exist, the alignment will
    be performed with results saved to this file - you can use the aligner arguments
    with this script)
  type: string
  inputBinding:
    prefix: --sam
- id: ref
  doc: FASTA file containing one or more reference sequences
  type: string
  inputBinding:
    prefix: --ref
- id: reads
  doc: FASTQ file of long reads
  type: string
  inputBinding:
    prefix: --reads
- id: min_len
  doc: 'Minimum alignment length (bp) - exclude alignments shorter than this length
    (default: 100)'
  type: long
  inputBinding:
    prefix: --min_len
- id: error_window_size
  doc: 'Window size for error summaries (default: 100)'
  type: string
  inputBinding:
    prefix: --error_window_size
- id: depth_window_size
  doc: 'Window size for depth summaries (default: 100)'
  type: string
  inputBinding:
    prefix: --depth_window_size
- id: error_rate_threshold
  doc: 'Threshold for high error rates, expressed as the fraction between the mean
    error rate and the random alignment error rate (default: 0.3)'
  type: string
  inputBinding:
    prefix: --error_rate_threshold
- id: depth_p_val
  doc: 'P-value for low/high depth thresholds (default: 0.001)'
  type: string
  inputBinding:
    prefix: --depth_p_val
- id: window_tables
  doc: 'Path and/or prefix for table files summarising reference errors for reference
    windows (default: do not save window tables)'
  type: string
  inputBinding:
    prefix: --window_tables
- id: base_tables
  doc: 'Path and/or prefix for table files summarising reference errors at each base
    (default: do not save base tables)'
  type: string
  inputBinding:
    prefix: --base_tables
- id: html
  doc: 'Path for HTML report (default: do not save HTML report)'
  type: string
  inputBinding:
    prefix: --html
- id: threads
  doc: 'Number of CPU threads used to align (default: the number of available CPUs)'
  type: string
  inputBinding:
    prefix: --threads
- id: verbosity
  doc: 'Level of stdout information (0 to 2) (default: 1)'
  type: string
  inputBinding:
    prefix: --verbosity
outputs: []
cwlVersion: v1.1
baseCommand:
- unicycler_check
