class: CommandLineTool
id: synthReadGen.cwl
inputs:
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: id
  doc: ': set distribution used for insert length [1 = normal], 2 = poisson'
  type: string
  inputBinding:
    prefix: -id
- id: ld
  doc: ': set distribution used for read length [1 = normal], 2 = poisson'
  type: string
  inputBinding:
    prefix: -ld
- id: im
  doc: ': inward insert length mean [200.0]'
  type: string
  inputBinding:
    prefix: -im
- id: om
  doc: ': outward insert length mean [500.0]'
  type: string
  inputBinding:
    prefix: -om
- id: is
  doc: ': inward insert length std dev [10.0]'
  type: string
  inputBinding:
    prefix: -is
- id: os
  doc: ': outward insert length std dev [15.0]'
  type: string
  inputBinding:
    prefix: -os
- id: ip
  doc: ': probability for an inward read [0.5]'
  type: string
  inputBinding:
    prefix: -ip
- id: er
  doc: ': illumina error char [^]'
  type: string
  inputBinding:
    prefix: -er
- id: nr
  doc: ': number of reads to make [1000]'
  type: string
  inputBinding:
    prefix: -nr
- id: rl
  doc: ': read length mean [85.0]'
  type: string
  inputBinding:
    prefix: -rl
- id: rs
  doc: ': read length sigma [7.0]'
  type: string
  inputBinding:
    prefix: -rs
- id: ps
  doc: ': no error for first x bases in a read [0]'
  type: string
  inputBinding:
    prefix: -ps
- id: b
  doc: ': outputs two fastq files for bowtie mapping [off]'
  type: boolean
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- synthReadGen
