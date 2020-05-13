class: CommandLineTool
id: MethylDackel_perRead.cwl
inputs:
- id: input
  doc: An input BAM or CRAM file. This MUST be sorted and should be indexed.
  type: string
  inputBinding:
    position: 0
- id: cpg
  doc: (%)
  type: string
  inputBinding:
    prefix: '- CpG'
- id: number
  doc: informative bases
  type: string
  inputBinding:
    prefix: '- number'
outputs: []
cwlVersion: v1.1
baseCommand:
- MethylDackel
- perRead
