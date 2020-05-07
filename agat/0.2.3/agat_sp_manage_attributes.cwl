class: CommandLineTool
id: agat_sp_manage_attributes.pl.cwl
inputs:
- id: gff
  doc: Input GTF/GFF file.
  type: string
  inputBinding:
    prefix: --gff
- id: type
  doc: 'primary tag option, case insensitive, list. Allow to specied the feature types
    that will be handled. You can specified a specific feature by given its primary
    tag name (column 3) as: cds, Gene, MrNa You can specify directly all the feature
    of a particular level: level2=mRNA,ncRNA,tRNA,etc level3=CDS,exon,UTR,etc By default
    all feature are taking in account. fill the option by the value "all" will have
    the same behaviour.'
  type: string
  inputBinding:
    prefix: --type
- id: tag
  doc: Attributes with the tag specified will be removed from the feature type specified
    by the option p (primary tag). List of tag must be coma separated. /!\\ You must
    use "" if name contains spaces. Instead to remove an attribute, you can replace
    its Tag by a new Tag using this formulation tagName/newTagName. To remove all
    attributes non mandatory (only ID and Parent are mandatory) you can use the option
    with <all_attributes> parameter.
  type: boolean
  inputBinding:
    prefix: --tag
- id: add
  doc: Attribute specified will be added if doesn't exist. The value will be 'empty'.
  type: boolean
  inputBinding:
    prefix: --add
- id: cp
  doc: 'When attributes specied are with this form: tagName/newTagName. By using this
    <cp> parameter, the tag will not be modified but duplicated with the new tagName.'
  type: boolean
  inputBinding:
    prefix: --cp
- id: o
  doc: ', --output , --out or --outfile Output GFF file. If no output file is specified,
    the output will be written to STDOUT.'
  type: boolean
  inputBinding:
    prefix: -o
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
- agat_sp_manage_attributes.pl
