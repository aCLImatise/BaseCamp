class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rfmix2tagore.py.cwl
inputs:
- id: chr_one
  doc: Chromosome 1 RFMix painting
  type: File
  inputBinding:
    prefix: --chr1
- id: chr_two
  doc: Chromosome 2 RFMix painting
  type: File
  inputBinding:
    prefix: --chr2
- id: afr
  doc: Color for African blocks
  type: string
  inputBinding:
    prefix: --afr
- id: eur
  doc: Color for European blocks
  type: string
  inputBinding:
    prefix: --eur
- id: nat
  doc: Color for Native American / Asian blocks
  type: string
  inputBinding:
    prefix: --nat
- id: unk
  doc: Color for Unknown regions
  type: string
  inputBinding:
    prefix: --unk
- id: out
  doc: Output da Vinci bed
  type: File
  inputBinding:
    prefix: --out
outputs: []
cwlVersion: v1.1
baseCommand:
- rfmix2tagore.py
