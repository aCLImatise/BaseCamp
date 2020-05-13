class: CommandLineTool
id: rMETL_calling.cwl
inputs:
- id: output
  doc: Directory to output final callset.
  type: string
  inputBinding:
    position: 0
- id: homozygous
  doc: The mininum score of a genotyping reported as a homozygous.[0.8]
  type: string
  inputBinding:
    prefix: --homozygous
- id: heterozygous
  doc: The mininum score of a genotyping reported as a heterozygous.[0.3]
  type: string
  inputBinding:
    prefix: --heterozygous
- id: min_mapq
  doc: Mininum mapping quality.[20]
  type: long
  inputBinding:
    prefix: --min_mapq
- id: clipping_threshold
  doc: Mininum threshold of realignment clipping.[0.5]
  type: string
  inputBinding:
    prefix: --clipping_threshold
- id: sample
  doc: Sample description
  type: string
  inputBinding:
    prefix: --sample
- id: mei
  doc: Enables rMETL to display MEI/MED only.[True]
  type: string
  inputBinding:
    prefix: --MEI
outputs: []
cwlVersion: v1.1
baseCommand:
- rMETL
- calling
