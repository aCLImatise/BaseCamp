class: CommandLineTool
id: ../../../agat_sp_fix_cds_phases.pl.cwl
inputs:
- id: gff
  doc: Input GTF/GFF file.
  type: string
  inputBinding:
    prefix: --gff
- id: fast_a
  doc: Input fasta file.
  type: string
  inputBinding:
    prefix: --fasta
- id: verbose
  doc: Add verbosity.
  type: string
  inputBinding:
    prefix: --verbose
- id: output
  doc: Output GFF file. If no output file is specified, the output will be written
    to STDOUT.
  type: string
  inputBinding:
    prefix: --output
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: agat_sp_fix_cds_frame_do_tpl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sp_fix_cds_phases.pl
