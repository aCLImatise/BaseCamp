class: CommandLineTool
id: iRep.cwl
inputs:
- id: in__fastas
  doc: '[F [F ...]]      fasta(s)'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_sorted_sam_files
  doc: '[S [S ...]]      sorted sam file(s) for each sample (e.g.: bowtie2'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_prefix_output_plots
  doc: prefix for output files (table and plots)
  type: string?
  inputBinding:
    prefix: -o
- id: in_pickle
  doc: save pickle file (optional)
  type: boolean?
  inputBinding:
    prefix: --pickle
- id: in_mm
  doc: 'max. # of read mismatches allowed (default: 1)'
  type: long?
  inputBinding:
    prefix: -mm
- id: in_sort
  doc: optional - sort the sam file
  type: boolean?
  inputBinding:
    prefix: --sort
- id: in_max_memory_gb
  doc: 'max. memory (GB) for sorting sam (default: 100)'
  type: long?
  inputBinding:
    prefix: -M
- id: in_no_plot
  doc: do not plot output
  type: boolean?
  inputBinding:
    prefix: --no-plot
- id: in_no_gc_correction
  doc: do not correct coverage for GC bias before calculating
  type: boolean?
  inputBinding:
    prefix: --no-gc-correction
- id: in_threads_default
  doc: 'threads (default: 6)'
  type: long?
  inputBinding:
    prefix: -t
- id: in_i_rep
  doc: -ff                 overwrite files
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
- iRep
