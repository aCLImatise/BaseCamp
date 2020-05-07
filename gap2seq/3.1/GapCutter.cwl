class: CommandLineTool
id: GapCutter.cwl
inputs:
- id: no_split
  doc: "(0 arg) :    Don't split flank sharing gaps"
  type: boolean
  inputBinding:
    prefix: -no-split
- id: mask
  doc: '(0 arg) :    Mask sequences too short to use'
  type: boolean
  inputBinding:
    prefix: -mask
- id: k
  doc: "(1 arg) :    k-mer length  [default '31']"
  type: boolean
  inputBinding:
    prefix: -k
- id: fuz
  doc: "(1 arg) :    Maximum number of nucleotides to ignore on gap fringes  [default\
    \ '10']"
  type: boolean
  inputBinding:
    prefix: -fuz
- id: bed
  doc: '(1 arg) :    BED file for gaps'
  type: boolean
  inputBinding:
    prefix: -bed
- id: gaps
  doc: '(1 arg) :    FASTA file of gaps'
  type: boolean
  inputBinding:
    prefix: -gaps
- id: contigs
  doc: '(1 arg) :    FASTA file of contigs'
  type: boolean
  inputBinding:
    prefix: -contigs
- id: scaffolds
  doc: '(1 arg) :    FASTA/Q file of scaffolds'
  type: boolean
  inputBinding:
    prefix: -scaffolds
- id: nb_cores
  doc: "(1 arg) :    number of cores  [default '0']"
  type: boolean
  inputBinding:
    prefix: -nb-cores
- id: verbose
  doc: "(1 arg) :    verbosity level  [default '1']"
  type: boolean
  inputBinding:
    prefix: -verbose
- id: version
  doc: '(0 arg) :    version'
  type: boolean
  inputBinding:
    prefix: -version
outputs: []
cwlVersion: v1.1
baseCommand:
- GapCutter
