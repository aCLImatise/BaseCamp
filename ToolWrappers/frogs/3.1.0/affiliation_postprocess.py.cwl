class: CommandLineTool
id: affiliation_postprocess.py.cwl
inputs:
- id: in_b
  doc: '[-r REFERENCE]'
  type: string
  inputBinding:
    prefix: -b
- id: in_identity
  doc: "Min percentage identity to agggregate OTU. [Default:\n99.0]"
  type: long
  inputBinding:
    prefix: --identity
- id: in_coverage
  doc: "Min percentage coverage to agggregate OTU. [Default:\n99.0]"
  type: long
  inputBinding:
    prefix: --coverage
- id: in_debug
  doc: Keep temporary files to debug program.
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_input_biom
  doc: "Abundance table with affiliations metadata from the\naffiliation_OTU program\
    \ (format: BIOM)."
  type: string
  inputBinding:
    prefix: --input-biom
- id: in_input_fast_a
  doc: 'OTU seed sequence file (format: Fasta).'
  type: File
  inputBinding:
    prefix: --input-fasta
- id: in_reference
  doc: "amplicon reference fasta file, to resolve inclusiv\namplicon affiliation"
  type: File
  inputBinding:
    prefix: --reference
- id: in_output_biom
  doc: "File whith refind affiliation annotations. [Default:\nrefined_affiliation.biom]"
  type: File
  inputBinding:
    prefix: --output-biom
- id: in_output_compo
  doc: "Aggregated OTU composition [Default:\naggregated_otu_composition.tsv]"
  type: string
  inputBinding:
    prefix: --output-compo
- id: in_output_fast_a
  doc: "Updated OTU fasta file [Default:\nrefined_affiliation.fasta]"
  type: File
  inputBinding:
    prefix: --output-fasta
- id: in_log_file
  doc: The list of commands executed.
  type: File
  inputBinding:
    prefix: --log-file
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- affiliation_postprocess.py
