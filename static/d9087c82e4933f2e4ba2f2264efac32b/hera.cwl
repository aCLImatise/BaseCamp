class: CommandLineTool
id: hera.cwl
inputs:
- id: o
  doc: ':      Output directory (default: ./)'
  type: boolean
  inputBinding:
    prefix: -o
- id: t
  doc: ':      Number of threads (default: 1)'
  type: boolean
  inputBinding:
    prefix: -t
- id: z
  doc: ':      Compress level (1 - 9) (default: -1)'
  type: boolean
  inputBinding:
    prefix: -z
- id: b
  doc: ':      Number of bootstraps (default: 0)'
  type: boolean
  inputBinding:
    prefix: -b
- id: w
  doc: ':      Output bam file 0:true, 1: false (default: 0)'
  type: boolean
  inputBinding:
    prefix: -w
- id: f
  doc: ':      Genome fasta file (if not define, genome mapping will be ignore'
  type: boolean
  inputBinding:
    prefix: -f
- id: p
  doc: ":      Output prefix (default: '')"
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- hera
