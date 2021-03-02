class: CommandLineTool
id: maf_convert.cwl
inputs:
- id: in_protein
  doc: assume protein alignments, for psl match counts
  type: boolean?
  inputBinding:
    prefix: --protein
- id: in_join
  doc: join co-linear alignments separated by <= N letters
  type: string?
  inputBinding:
    prefix: --join
- id: in_noheader
  doc: omit any header lines from the output
  type: boolean?
  inputBinding:
    prefix: --noheader
- id: in_dictionary
  doc: include dictionary of sequence lengths in sam format
  type: boolean?
  inputBinding:
    prefix: --dictionary
- id: in_dict_file
  doc: get sequence dictionary from DICTFILE
  type: File?
  inputBinding:
    prefix: --dictfile
- id: in_read_group
  doc: read group info for sam format
  type: string?
  inputBinding:
    prefix: --readgroup
- id: in_line_size
  doc: "line length for blast and html formats (default: 60)\n"
  type: long?
  inputBinding:
    prefix: --linesize
- id: in_axt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_blast
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_blast_tab
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_chain
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_html
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_psl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_tab
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_maf_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- maf-convert
