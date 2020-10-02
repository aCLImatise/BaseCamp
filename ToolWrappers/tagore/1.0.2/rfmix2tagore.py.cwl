class: CommandLineTool
id: rfmix2tagore.py.cwl
inputs:
- id: in_chr_one
  doc: Chromosome 1 RFMix painting
  type: File
  inputBinding:
    prefix: --chr1
- id: in_chr_two
  doc: Chromosome 2 RFMix painting
  type: File
  inputBinding:
    prefix: --chr2
- id: in_afr
  doc: Color for African blocks
  type: string
  inputBinding:
    prefix: --afr
- id: in_eur
  doc: Color for European blocks
  type: string
  inputBinding:
    prefix: --eur
- id: in_nat
  doc: Color for Native American / Asian blocks
  type: string
  inputBinding:
    prefix: --nat
- id: in_unk
  doc: Color for Unknown regions
  type: string
  inputBinding:
    prefix: --unk
- id: in_out
  doc: Output da Vinci bed
  type: File
  inputBinding:
    prefix: --out
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rfmix2tagore.py
