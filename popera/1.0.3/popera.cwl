class: CommandLineTool
id: popera.cwl
inputs:
- id: data
  doc: data file, should be sorted bam format
  type: string
  inputBinding:
    prefix: --data
- id: name
  doc: NH sample name default=NH_sample
  type: string
  inputBinding:
    prefix: --name
- id: bandwidth
  doc: kernel smooth band width, should >1, default=200
  type: string
  inputBinding:
    prefix: --bandwidth
- id: threshold
  doc: Hot spots threshold, default=4.0
  type: string
  inputBinding:
    prefix: --threshold
- id: minlength
  doc: minimum length of hot spots, default=5
  type: long
  inputBinding:
    prefix: --minlength
- id: threads
  doc: threads number or cpu number, default=4
  type: string
  inputBinding:
    prefix: --threads
- id: bigwig
  doc: whether out put bigwig file, default=False
  type: boolean
  inputBinding:
    prefix: --bigwig
- id: exclude_chr
  doc: Don't count those DHs, example='-x ChrM,ChrC'
  type: string
  inputBinding:
    prefix: --excludechr
outputs: []
cwlVersion: v1.1
baseCommand:
- popera
