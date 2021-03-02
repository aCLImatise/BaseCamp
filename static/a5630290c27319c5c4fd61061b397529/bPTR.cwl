class: CommandLineTool
id: bPTR.cwl
inputs:
- id: in__fastas
  doc: '[F [F ...]]  fasta(s)'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_sorted_sam_files
  doc: '[S [S ...]]  sorted sam file(s) for each sample (e.g.: bowtie2 --reorder)'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_method_detecting_oriter
  doc: 'method for detecting Ori/Ter of replication: gc_skew or'
  type: string?
  inputBinding:
    prefix: -m
- id: in_filename_output_table
  doc: filename for output table
  type: File?
  inputBinding:
    prefix: -o
- id: in_pickle
  doc: filename for output pickle file (optional)
  type: File?
  inputBinding:
    prefix: -pickle
- id: in_plot
  doc: 'filename for coverage profile plots (default: no plots)'
  type: File?
  inputBinding:
    prefix: -plot
- id: in_mm
  doc: "maximum number of mapping mismatches allowed (default: no\nlimit)"
  type: long?
  inputBinding:
    prefix: -mm
- id: in_number_perform_default
  doc: 'number of permutations to perform (default: None)'
  type: long?
  inputBinding:
    prefix: -p
- id: in_sort
  doc: sort the sam file
  type: boolean?
  inputBinding:
    prefix: --sort
- id: in_max_memory_gb
  doc: 'max memory (GB) for sorting sam (default: 100)'
  type: long?
  inputBinding:
    prefix: -b
- id: in_ff
  doc: overwrite files
  type: boolean?
  inputBinding:
    prefix: -ff
- id: in_threads_default
  doc: 'threads (default: 6)'
  type: long?
  inputBinding:
    prefix: -t
- id: in_c
  doc: ''
  type: string?
  inputBinding:
    prefix: -c
- id: in_coverage
  doc: '-c C            pre-computed data from growth_ptr.py (optional: pickle file)'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_filename_output_table
  doc: filename for output table
  type: File?
  outputBinding:
    glob: $(inputs.in_filename_output_table)
- id: out_pickle
  doc: filename for output pickle file (optional)
  type: File?
  outputBinding:
    glob: $(inputs.in_pickle)
hints: []
cwlVersion: v1.1
baseCommand:
- bPTR
