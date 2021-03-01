class: CommandLineTool
id: agat_sq_mask.pl.cwl
inputs:
- id: in_gff
  doc: Input GTF/GFF file.
  type: File?
  inputBinding:
    prefix: --gff
- id: in_fast_a
  doc: Input fasta file that will be masked
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_sm
  doc: SoftMask option =>Sequences masked will be in lowercase
  type: boolean?
  inputBinding:
    prefix: -sm
- id: in_hm
  doc: "HardMask option => Sequences masked will be replaced by a\ncharacter. By default\
    \ the character used is 'n'. But you are\nallowed to speceify any character of\
    \ your choice. To use 'z'\ninstead of 'n' type: -hm z"
  type: boolean?
  inputBinding:
    prefix: -hm
- id: in_output
  doc: "Output GFF file. If no output file is specified, the output will\nbe written\
    \ to STDOUT."
  type: File?
  inputBinding:
    prefix: --output
- id: in_agat_sq_mask_do_tpl
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
- agat_sq_mask.pl
