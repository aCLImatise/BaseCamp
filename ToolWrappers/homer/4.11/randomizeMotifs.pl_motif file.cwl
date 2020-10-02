class: CommandLineTool
id: randomizeMotifs.pl_motif file.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- randomizeMotifs.pl
- motif file
