class: CommandLineTool
id: ../../../agat_sp_alignment_output_style.pl.cwl
inputs:
- id: gff
  doc: Input GTF/GFF file.
  type: string
  inputBinding:
    prefix: --gff
- id: ct
  doc: When the gff file provided is not correcly formated and features are linked
    to each other by a comon tag (by default locus_tag), this tag can be provided
    to parse the file correctly.
  type: string
  inputBinding:
    prefix: --ct
- id: verbose_option_see
  doc: Verbose option to see the warning messages when parsing the gff file.
  type: boolean
  inputBinding:
    prefix: -v
- id: output
  doc: Output GFF file. If no output file is specified, the output will be written
    to STDOUT.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sp_alignment_output_style.pl
