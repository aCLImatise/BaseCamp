class: CommandLineTool
id: iRep.cwl
inputs:
- id: f
  doc: '[F [F ...]]      fasta(s)'
  type: boolean
  inputBinding:
    prefix: -f
- id: s
  doc: '[S [S ...]]      sorted sam file(s) for each sample (e.g.: bowtie2 --reorder)'
  type: boolean
  inputBinding:
    prefix: -s
- id: o
  doc: prefix for output files (table and plots)
  type: string
  inputBinding:
    prefix: -o
- id: pickle
  doc: save pickle file (optional)
  type: boolean
  inputBinding:
    prefix: --pickle
- id: mm
  doc: 'max. # of read mismatches allowed (default: 1)'
  type: string
  inputBinding:
    prefix: -mm
- id: sort
  doc: optional - sort the sam file
  type: boolean
  inputBinding:
    prefix: --sort
- id: m
  doc: 'max. memory (GB) for sorting sam (default: 100)'
  type: string
  inputBinding:
    prefix: -M
- id: no_plot
  doc: do not plot output
  type: boolean
  inputBinding:
    prefix: --no-plot
- id: no_gc_correction
  doc: do not correct coverage for GC bias before calculating iRep
  type: boolean
  inputBinding:
    prefix: --no-gc-correction
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
- iRep
