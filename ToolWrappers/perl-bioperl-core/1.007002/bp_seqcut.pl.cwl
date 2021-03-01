class: CommandLineTool
id: bp_seqcut.pl.cwl
inputs:
- id: in_help_message
  doc: help message
  type: string?
  inputBinding:
    prefix: -h
- id: in_residue_start_cutting
  doc: residue to start cutting on
  type: string?
  inputBinding:
    prefix: -s
- id: in_residue_finish_cutting
  doc: residue to finish cutting on
  type: string?
  inputBinding:
    prefix: -e
- id: in_files_defaults_fasta
  doc: of the files, defaults to FASTA but you can specify anything supported by SeqIO
    from BioPerl
  type: string?
  inputBinding:
    prefix: -f
- id: in_wrap_width_supported
  doc: wrap width, this might not be supported depending on which format you are using
  type: string?
  inputBinding:
    prefix: -w
- id: in_help
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_residue
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_wrap
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_width
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_finish
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_start
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_cutting
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bp_seqcut.pl
