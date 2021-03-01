class: CommandLineTool
id: coords2clnt.py.cwl
inputs:
- id: in_outfile
  doc: Write results to this file.
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_three_prime
  doc: "Set position one nt downstream of 3'-end as\ncrosslinked nucleotide."
  type: boolean?
  inputBinding:
    prefix: --threeprime
- id: in_verbose
  doc: Be verbose.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: Print lots of debugging information
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_in_file
  doc: Path to bed input file.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- coords2clnt.py
