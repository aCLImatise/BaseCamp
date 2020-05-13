class: CommandLineTool
id: gaas_fasta_extract_sequence_from_OG.pl.cwl
inputs:
- id: fast_a
  doc: Input fasta file.
  type: string
  inputBinding:
    prefix: --fasta
- id: og
  doc: 'The OG file contains all the orthoMCL groups and the ID of the sequences in
    each group. eg : OG_1000: 5833|MAL13P1.2:pep 5833|PF10_0398:pep OG_1001: 5833|MAL13P1.1:pep
    5833|PFE0005w:pep 5833|MAL8P1.220:pep 5833|PFF1595c:pep'
  type: boolean
  inputBinding:
    prefix: --og
- id: dir
  doc: optional you can choose a name for the output folder, by default it will be
    called OG_fasta
  type: boolean
  inputBinding:
    prefix: --dir
- id: a
  doc: description,
  type: string
  inputBinding:
    prefix: '- a'
- id: as
  doc: relevant information as possible,
  type: string
  inputBinding:
    prefix: '- as'
- id: the
  doc: used,
  type: string
  inputBinding:
    prefix: '- the'
- id: a
  doc: sample,
  type: string
  inputBinding:
    prefix: '- a'
- id: an
  doc: of the expected behaviour that is not occurring.
  type: string
  inputBinding:
    prefix: '- an'
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_fasta_extract_sequence_from_OG.pl
