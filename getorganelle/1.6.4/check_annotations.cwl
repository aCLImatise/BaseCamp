class: CommandLineTool
id: check_annotations.py.cwl
inputs:
- id: python
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: this_script_py
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: query_gb
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: r
  doc: input reference *.gb file
  type: string
  inputBinding:
    prefix: -r
- id: d
  doc: input reference fasta file exported exported by "Extract Annotations"-"Export"-"Selected
    Documents"-fasta in Geneious, remember to choose "Replace spaces in sequence name
    with underscores"
  type: string
  inputBinding:
    prefix: -d
- id: t_ends
  doc: Default=10. The length to check at the both ends of tRNA.
  type: string
  inputBinding:
    prefix: --t-ends
- id: c_ends
  doc: Default:not activated. Activate this calculation and assign the length to check
    at the both ends of CDS.
  type: string
  inputBinding:
    prefix: --c-ends
- id: a_ends
  doc: Default:not activated. Activate this calculation and assign the length to check
    at the both ends of annotated all regions.
  type: string
  inputBinding:
    prefix: --a-ends
- id: l_threshold
  doc: Default=0.9. Length threshold to report warning.
  type: long
  inputBinding:
    prefix: --l-threshold
- id: similarity
  doc: Default=False. Choose to enable similarity calculation.
  type: boolean
  inputBinding:
    prefix: --similarity
- id: s_threshold
  doc: Default=0.9. Similarity threshold to report warning. Should be < length threshold.
  type: string
  inputBinding:
    prefix: --s-threshold
outputs: []
cwlVersion: v1.1
baseCommand:
- check_annotations.py
