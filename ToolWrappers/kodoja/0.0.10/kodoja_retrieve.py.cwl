class: CommandLineTool
id: kodoja_retrieve.py.cwl
inputs:
- id: in_file_dir
  doc: Path to directory of kodoja_search results, required
  type: File?
  inputBinding:
    prefix: --file_dir
- id: in_read_one
  doc: Read 1 file path, required
  type: long?
  inputBinding:
    prefix: --read1
- id: in_read_two
  doc: 'Read 2 file path, default: False'
  type: long?
  inputBinding:
    prefix: --read2
- id: in_user_format
  doc: 'Sequence data format, default: fastq'
  type: string?
  inputBinding:
    prefix: --user_format
- id: in_taxid
  doc: "Virus tax ID for subsetting, default: All viral\nsequences"
  type: string?
  inputBinding:
    prefix: --taxID
- id: in_genus
  doc: Include sequences classified at genus
  type: boolean?
  inputBinding:
    prefix: --genus
- id: in_stringent
  doc: Only subset sequences identified by both tools
  type: boolean?
  inputBinding:
    prefix: --stringent
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- kodoja_retrieve.py
