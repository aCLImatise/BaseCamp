class: CommandLineTool
id: agat_sp_ensembl_output_style.pl.cwl
inputs:
- id: gff
  doc: Input GTF/GFF file.
  type: string
  inputBinding:
    prefix: --gff
- id: ct
  doc: When the gff file provided is not correcly formated and features are linked
    to each other by a comon tag (by default locus_tag), this tag can be provided
    to parse the input file correctly.
  type: string
  inputBinding:
    prefix: --ct
- id: v
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
- agat_sp_ensembl_output_style.pl
