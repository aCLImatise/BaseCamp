class: CommandLineTool
id: bPTR.cwl
inputs:
- id: f
  doc: '[F [F ...]]  fasta(s)'
  type: boolean
  inputBinding:
    prefix: -f
- id: s
  doc: '[S [S ...]]  sorted sam file(s) for each sample (e.g.: bowtie2 --reorder)'
  type: boolean
  inputBinding:
    prefix: -s
- id: m
  doc: 'method for detecting Ori/Ter of replication: gc_skew or coverage'
  type: string
  inputBinding:
    prefix: -m
- id: c
  doc: 'pre-computed data from growth_ptr.py (optional: pickle file)'
  type: string
  inputBinding:
    prefix: -c
- id: o
  doc: filename for output table
  type: string
  inputBinding:
    prefix: -o
- id: pickle
  doc: filename for output pickle file (optional)
  type: string
  inputBinding:
    prefix: -pickle
- id: plot
  doc: 'filename for coverage profile plots (default: no plots)'
  type: string
  inputBinding:
    prefix: -plot
- id: mm
  doc: 'maximum number of mapping mismatches allowed (default: no limit)'
  type: string
  inputBinding:
    prefix: -mm
- id: p
  doc: 'number of permutations to perform (default: None)'
  type: string
  inputBinding:
    prefix: -p
- id: sort
  doc: sort the sam file
  type: boolean
  inputBinding:
    prefix: --sort
- id: b
  doc: 'max memory (GB) for sorting sam (default: 100)'
  type: string
  inputBinding:
    prefix: -b
- id: ff
  doc: overwrite files
  type: boolean
  inputBinding:
    prefix: -ff
- id: t
  doc: 'threads (default: 6)'
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- bPTR
