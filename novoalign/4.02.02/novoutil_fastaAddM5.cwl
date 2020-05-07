class: CommandLineTool
id: novoutil_fastaAddM5.cwl
inputs:
- id: in
  doc: is the fasta files to be processed. Input files may be compressed with gzip
    or bzip.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- novoutil
- fastaAddM5
