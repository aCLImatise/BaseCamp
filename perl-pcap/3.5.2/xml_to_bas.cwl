class: CommandLineTool
id: xml_to_bas.pl.cwl
inputs:
- id: uri
  doc: -d    Same URI used by gtdownload
  type: boolean
  inputBinding:
    prefix: -uri
- id: output
  doc: -o    Name for output file. Defaults to STDOUT.
  type: boolean
  inputBinding:
    prefix: -output
- id: bam
  doc: -b  BAM|CRAM file this data relates to - checks retrieved data correlates with
    expected BAM - additionally can correct read_group_id if other fields correlate
    when clashes occur.
  type: boolean
  inputBinding:
    prefix: -bam
- id: local_path
  doc: file path for XML from GNOS.
  type: string
  inputBinding:
    prefix: -local-path
- id: man
  doc: -m   Full documentation.
  type: boolean
  inputBinding:
    prefix: -man
- id: version
  doc: Prints the version number.
  type: boolean
  inputBinding:
    prefix: -version
- id: man
  doc: Prints the manual page and exits.
  type: boolean
  inputBinding:
    prefix: -man
- id: version
  doc: Prints the version number and exits.
  type: boolean
  inputBinding:
    prefix: -version
outputs: []
cwlVersion: v1.1
baseCommand:
- xml_to_bas.pl
