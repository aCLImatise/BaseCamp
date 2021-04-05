class: CommandLineTool
id: virulign.cwl
inputs:
- id: in_export_kind
  doc: '[Mutations PairwiseAlignments GlobalAlignment PositionTable MutationTable]'
  type: boolean?
  inputBinding:
    prefix: --exportKind
- id: in_export_alphabet
  doc: '[AminoAcids Nucleotides]'
  type: boolean?
  inputBinding:
    prefix: --exportAlphabet
- id: in_export_with_insertions
  doc: '[yes no]'
  type: boolean?
  inputBinding:
    prefix: --exportWithInsertions
- id: in_export_reference_sequence
  doc: '[no yes]'
  type: boolean?
  inputBinding:
    prefix: --exportReferenceSequence
- id: in_progress
  doc: '[no yes]'
  type: boolean?
  inputBinding:
    prefix: --progress
- id: in_threads
  doc: '=>1 [default: all cpus available]'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_reference_dot_fast_a
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_orf_description_dot_xml
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_sequences_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/virulign:1.1.1--hc9558a2_0
cwlVersion: v1.1
baseCommand:
- virulign
