class: CommandLineTool
id: check_annotations.py.cwl
inputs:
- id: in_input_reference_gb
  doc: input reference *.gb file
  type: File?
  inputBinding:
    prefix: -r
- id: in_input_reference_fasta
  doc: "input reference fasta file exported exported by\n\"Extract Annotations\"-\"\
    Export\"-\"Selected\nDocuments\"-fasta in Geneious, remember to choose\n\"Replace\
    \ spaces in sequence name with underscores\""
  type: File?
  inputBinding:
    prefix: -d
- id: in_t_ends
  doc: Default=10. The length to check at the both ends of
  type: long?
  inputBinding:
    prefix: --t-ends
- id: in_a_ends
  doc: "Default:not activated. Activate this calculation and\nassign the length to\
    \ check at the both ends of\nannotated all regions."
  type: long?
  inputBinding:
    prefix: --a-ends
- id: in_l_threshold
  doc: Default=0.9. Length threshold to report warning.
  type: long?
  inputBinding:
    prefix: --l-threshold
- id: in_similarity
  doc: Default=False. Choose to enable similarity
  type: boolean?
  inputBinding:
    prefix: --similarity
- id: in_trna_dot
  doc: --c-ends=ENDS_CDS   Default:not activated. Activate this calculation and
  type: string
  inputBinding:
    position: 0
- id: in_calculation_dot
  doc: --s-threshold=SIMILARITY
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- check_annotations.py
