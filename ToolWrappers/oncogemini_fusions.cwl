class: CommandLineTool
id: oncogemini_fusions.cwl
inputs:
- id: in_in_cosmic_census
  doc: One or both genes in fusion is in COSMIC cancer census
  type: boolean
  inputBinding:
    prefix: --in_cosmic_census
- id: in_min_qual
  doc: 'The min variant quality (VCF QUAL) (def: None).'
  type: double
  inputBinding:
    prefix: --min_qual
- id: in_evidence_type
  doc: "The supporting evidence types for the variant (\"PE\",\n\"SR\", or \"PE,SR\"\
    ).\n"
  type: string
  inputBinding:
    prefix: --evidence_type
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- oncogemini
- fusions
