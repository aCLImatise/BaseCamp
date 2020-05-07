class: CommandLineTool
id: maf_convert.cwl
inputs:
- id: protein
  doc: assume protein alignments, for psl match counts
  type: boolean
  inputBinding:
    prefix: --protein
- id: join
  doc: join co-linear alignments separated by <= N letters
  type: string
  inputBinding:
    prefix: --join
- id: noheader
  doc: omit any header lines from the output
  type: boolean
  inputBinding:
    prefix: --noheader
- id: dictionary
  doc: include dictionary of sequence lengths in sam format
  type: boolean
  inputBinding:
    prefix: --dictionary
- id: dict_file
  doc: get sequence dictionary from DICTFILE
  type: string
  inputBinding:
    prefix: --dictfile
- id: read_group
  doc: read group info for sam format
  type: string
  inputBinding:
    prefix: --readgroup
- id: line_size
  doc: 'line length for blast and html formats (default: 60)'
  type: string
  inputBinding:
    prefix: --linesize
outputs: []
cwlVersion: v1.1
baseCommand:
- maf-convert
