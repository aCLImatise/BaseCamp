class: CommandLineTool
id: kodoja_retrieve.py.cwl
inputs:
- id: file_dir
  doc: Path to directory of kodoja_search results, required
  type: File
  inputBinding:
    prefix: --file_dir
- id: read_1
  doc: Read 1 file path, required
  type: string
  inputBinding:
    prefix: --read1
- id: read_2
  doc: 'Read 2 file path, default: False'
  type: string
  inputBinding:
    prefix: --read2
- id: user_format
  doc: 'Sequence data format, default: fastq'
  type: string
  inputBinding:
    prefix: --user_format
- id: taxid
  doc: 'Virus tax ID for subsetting, default: All viral sequences'
  type: string
  inputBinding:
    prefix: --taxID
- id: genus
  doc: Include sequences classified at genus
  type: boolean
  inputBinding:
    prefix: --genus
- id: stringent
  doc: Only subset sequences identified by both tools
  type: boolean
  inputBinding:
    prefix: --stringent
outputs: []
cwlVersion: v1.1
baseCommand:
- kodoja_retrieve.py
