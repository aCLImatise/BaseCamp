class: CommandLineTool
id: ../../../agat_convert_genscan2gff.pl.cwl
inputs:
- id: genscan
  doc: Input bed file that will be convert.
  type: string
  inputBinding:
    prefix: --genscan
- id: source
  doc: 'The source informs about the tool used to produce the data and is stored in
    2nd field of a gff file. Example: Stringtie,Maker,Augustus,etc. [default: data]'
  type: boolean
  inputBinding:
    prefix: --source
- id: primary_tag
  doc: 'The primary_tag corresponf to the data type and is stored in 3rd field of
    a gff file. Example: gene,mRNA,CDS,etc. [default: gene]'
  type: boolean
  inputBinding:
    prefix: --primary_tag
- id: inflate_off
  doc: By default we inflate the block fields (blockCount, blockSizes, blockStarts)
    to create subfeatures of the main feature (primary_tag). Type of subfeature created
    based on the inflate_type parameter. If you don't want this inflating behaviour
    you can deactivate it by using the option --inflate_off.
  type: boolean
  inputBinding:
    prefix: --inflate_off
- id: inflate_type
  doc: 'Feature type (3rd column in gff) created when inflate parameter activated
    [default: exon].'
  type: boolean
  inputBinding:
    prefix: --inflate_type
- id: verbose
  doc: add verbosity
  type: boolean
  inputBinding:
    prefix: --verbose
- id: _output_
  doc: ', --output , --out , --outfile or --gff Output GFF file. If no output file
    is specified, the output will be written to STDOUT.'
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_convert_genscan2gff.pl
