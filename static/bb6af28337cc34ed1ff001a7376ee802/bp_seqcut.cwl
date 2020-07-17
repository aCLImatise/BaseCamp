class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bp_seqcut.pl.cwl
inputs:
- id: help_message
  doc: help message
  type: string
  inputBinding:
    prefix: -h
- id: residue_start_cutting
  doc: residue to start cutting on
  type: string
  inputBinding:
    prefix: -s
- id: residue_finish_cutting
  doc: residue to finish cutting on
  type: string
  inputBinding:
    prefix: -e
- id: files_defaults_fasta
  doc: of the files, defaults to FASTA but you can specify anything supported by SeqIO
    from BioPerl
  type: string
  inputBinding:
    prefix: -f
- id: wrap_width_might
  doc: wrap width, this might not be supported depending on which format you are using
  type: string
  inputBinding:
    prefix: -w
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_seqcut.pl
