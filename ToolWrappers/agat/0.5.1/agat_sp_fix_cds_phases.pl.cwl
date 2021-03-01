class: CommandLineTool
id: agat_sp_fix_cds_phases.pl.cwl
inputs:
- id: in_gff
  doc: Input GTF/GFF file.
  type: File?
  inputBinding:
    prefix: --gff
- id: in_fast_a
  doc: Input fasta file.
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_verbose
  doc: Add verbosity.
  type: string?
  inputBinding:
    prefix: --verbose
- id: in_output
  doc: "Output GFF file. If no output file is specified, the output will\nbe written\
    \ to STDOUT."
  type: File?
  inputBinding:
    prefix: --output
- id: in_f
  doc: ''
  type: string?
  inputBinding:
    prefix: -f
- id: in_agat_sp_fix_cds_frame_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output GFF file. If no output file is specified, the output will\nbe written\
    \ to STDOUT."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/agat:0.5.1--pl526r35_0
cwlVersion: v1.1
baseCommand:
- agat_sp_fix_cds_phases.pl
