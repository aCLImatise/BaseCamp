class: CommandLineTool
id: fullsimplify.cwl
inputs:
- id: fs
  doc: contained single read reduction read filename(s) (comma separated fasta/fastq)
  type: boolean
  inputBinding:
    prefix: -fs
- id: fp
  doc: contained paired-end read reduction read filename(s) in pairs of 2 (comma separated
    fasta/fastq)
  type: boolean
  inputBinding:
    prefix: -fp
- id: fpi
  doc: contained interleaved paired-end read reduction read filename(s) (comma separated
    fasta/fastq)
  type: boolean
  inputBinding:
    prefix: -fpi
- id: crd
  doc: 'Contained read file (default: none)'
  type: boolean
  inputBinding:
    prefix: -crd
- id: e
  doc: overlapped edge property graph filename(s) (comma separated edge list)
  type: boolean
  inputBinding:
    prefix: -e
- id: p
  doc: 'assembly parameter file (default: parameter.cfg)'
  type: boolean
  inputBinding:
    prefix: -p
- id: o
  doc: all output filename prefix
  type: boolean
  inputBinding:
    prefix: -o
- id: simp_th
  doc: path to partial simplification executable
  type: boolean
  inputBinding:
    prefix: -simPth
- id: ovl
  doc: 'minimum overlap length (default: 0, use all overlap found in edge property
    graph files)'
  type: boolean
  inputBinding:
    prefix: -ovl
- id: log
  doc: 'verbosity level of log messages: ERROR, WARNING, INFO (default: INFO)'
  type: boolean
  inputBinding:
    prefix: -log
outputs: []
cwlVersion: v1.1
baseCommand:
- fullsimplify
