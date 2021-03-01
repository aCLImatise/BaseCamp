class: CommandLineTool
id: fastq_stats.cwl
inputs:
- id: in_cyclemax_max_cycles
  doc: 'cyclemax: max cycles for which following quality stats are produced [35]'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_window_max_window
  doc: 'window: max window size for generating duplicate read statistics [2000000]'
  type: long?
  inputBinding:
    prefix: -w
- id: in_debug_prints_statements
  doc: 'debug: prints out debug statements'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_do_duplicate_read
  doc: don't do duplicate read statistics
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_number_top_duplicate
  doc: number of top duplicate reads to display
  type: long?
  inputBinding:
    prefix: -s
- id: in_output_fastx_requires
  doc: output fastx statistics (requires an output filename)
  type: File?
  inputBinding:
    prefix: -x
- id: in_output_base_breakdown
  doc: "output base breakdown by per phred quality at every cycle.\nIt sets cylemax\
    \ to longest read length"
  type: long?
  inputBinding:
    prefix: -b
- id: in_output_length_counts
  doc: Output length counts
  type: long?
  inputBinding:
    prefix: -L
- id: in_reads
  doc: ': #reads in the fastq file'
  type: string
  inputBinding:
    position: 0
- id: in_len
  doc: ': read length. mean and stdev are provided for variable read lengths'
  type: string
  inputBinding:
    position: 1
- id: in_phred
  doc: ': phred scale used'
  type: string
  inputBinding:
    position: 2
- id: in_window_size
  doc: ': Number of reads used to generate duplicate read statistics'
  type: long
  inputBinding:
    position: 3
- id: in_cycle_max
  doc: ': Number of bases to assess for duplicity'
  type: long
  inputBinding:
    position: 4
- id: in_dups
  doc: ': Number of reads that are duplicates'
  type: string
  inputBinding:
    position: 5
- id: in_qual
  doc: ': Base Quality min, max and mean'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_fastx_requires
  doc: output fastx statistics (requires an output filename)
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fastx_requires)
hints: []
cwlVersion: v1.1
baseCommand:
- fastq-stats
