class: CommandLineTool
id: agat_sp_ensembl_output_style.pl.cwl
inputs:
- id: in_gff
  doc: Input GTF/GFF file.
  type: File?
  inputBinding:
    prefix: --gff
- id: in_ct
  doc: "When the gff file provided is not correcly formated and features\nare linked\
    \ to each other by a comon tag (by default locus_tag),\nthis tag can be provided\
    \ to parse the input file correctly."
  type: File?
  inputBinding:
    prefix: --ct
- id: in_verbose_option_see
  doc: Verbose option to see the warning messages when parsing the gff
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_agat_sp_ensembl_output_style_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
- id: in_file_dot
  doc: -o or --output
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0
cwlVersion: v1.1
baseCommand:
- agat_sp_ensembl_output_style.pl
