class: CommandLineTool
id: agat_sp_filter_feature_by_attribute_presence.pl.cwl
inputs:
- id: ref_file
  doc: Input GFF3 file that will be read
  type: string
  inputBinding:
    prefix: --reffile
- id: type
  doc: 'primary tag option, case insensitive, list. Allow to specied the feature types
    that will be handled. You can specified a specific feature by given its primary
    tag name (column 3) as: cds, Gene, MrNa You can specify directly all the feature
    of a particular level: level2=mRNA,ncRNA,tRNA,etc level3=CDS,exon,UTR,etc By default
    all feature are taking into account. fill the option by the value "all" will have
    the same behaviour.'
  type: string
  inputBinding:
    prefix: --type
- id: attribute
  doc: String - Attributes tag specified will be used to filter the feature type (feature
    type can also be specified by the option -p). List of attribute tags must be coma
    separated.
  type: boolean
  inputBinding:
    prefix: --attribute
- id: flip
  doc: BOLEAN - In order to flip the test and keep features that do have the attribute
    and filter those without
  type: boolean
  inputBinding:
    prefix: --flip
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
- agat_sp_filter_feature_by_attribute_presence.pl
