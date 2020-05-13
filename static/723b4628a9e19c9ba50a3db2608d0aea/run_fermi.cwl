class: CommandLineTool
id: run_fermi.pl.cwl
inputs:
- id: p
  doc: the input files are paired (ends in separate files)
  type: boolean
  inputBinding:
    prefix: -P
- id: c
  doc: the input is collated/initerleaved FASTQ (two ends in the same file)
  type: boolean
  inputBinding:
    prefix: -c
- id: d
  doc: halve the number of jobs for building the split index (effective with -B)
  type: boolean
  inputBinding:
    prefix: -D
- id: b
  doc: use the original algorithm for constructing FMD-index (default is BCR)
  type: boolean
  inputBinding:
    prefix: -B
- id: c
  doc: skip error correction
  type: boolean
  inputBinding:
    prefix: -C
- id: e
  doc: fermi executable [fermi]
  type: File
  inputBinding:
    prefix: -e
- id: t
  doc: number of threads [2]
  type: long
  inputBinding:
    prefix: -t
- id: p
  doc: prefix of output files [fmdef]
  type: string
  inputBinding:
    prefix: -p
- id: l
  doc: trim reads to INT bp after error correction [inf]
  type: long
  inputBinding:
    prefix: -l
- id: k
  doc: minimum overlap [50]
  type: long
  inputBinding:
    prefix: -k
outputs: []
cwlVersion: v1.1
baseCommand:
- run-fermi.pl
