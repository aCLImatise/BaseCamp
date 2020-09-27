class: CommandLineTool
id: bank2contig.cwl
inputs:
- id: in_display_compatible_version
  doc: Display the compatible bank version
  type: boolean
  inputBinding:
    prefix: -v
- id: in_use_eids_names
  doc: Use EIDs for names (DEFAULT)
  type: boolean
  inputBinding:
    prefix: -e
- id: in_use_iids_names
  doc: Use IIDs for names
  type: boolean
  inputBinding:
    prefix: -i
- id: in_dump_just_eids
  doc: Dump just the contig eids listed in file
  type: File
  inputBinding:
    prefix: -E
- id: in_dump_just_iids
  doc: Dump just the contig iids listed in file
  type: File
  inputBinding:
    prefix: -I
- id: in_just_create_file
  doc: Just create a layout file (no sequence)
  type: boolean
  inputBinding:
    prefix: -L
- id: in_simple_layout_style
  doc: Simple Layout style
  type: boolean
  inputBinding:
    prefix: -S
- id: in_sam_format_httpsamtoolssfnet
  doc: SAM Format (http://samtools.sf.net)
  type: boolean
  inputBinding:
    prefix: -s
- id: in_xml_format_suitable
  doc: XML Format suitable for DNPTrapper
  type: boolean
  inputBinding:
    prefix: -T
- id: in_bank_two_contig
  doc: '[options]  <bank path>'
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bank2contig
