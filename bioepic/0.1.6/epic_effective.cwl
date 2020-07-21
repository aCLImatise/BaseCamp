class: CommandLineTool
id: ../../../epic_effective.cwl
inputs:
- id: read_length
  doc: length of reads
  type: string
  inputBinding:
    prefix: --read-length
- id: nb_cpu
  doc: 'number of cores to use [default: 1]'
  type: string
  inputBinding:
    prefix: --nb-cpu
- id: tmpdir
  doc: temporary directory. Default is to use $TMPDIR if set, otherwise /tmp.
  type: string
  inputBinding:
    prefix: --tmpdir
- id: file
  doc: Fasta genome
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- epic-effective
