class: CommandLineTool
id: wordmatch.cwl
inputs:
- id: in_word_size
  doc: integer    [4] Word size (Integer 2 or more)
  type: boolean
  inputBinding:
    prefix: -wordsize
- id: in_log_file
  doc: "outfile    [wordmatch.log] Statistics on distribution\nof kmers and matches"
  type: boolean
  inputBinding:
    prefix: -logfile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- wordmatch
