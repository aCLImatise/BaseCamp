class: CommandLineTool
id: backtranseq.cwl
inputs:
- id: in_c_file
  doc: codon      [Ehuman.cut] Codon usage table name
  type: boolean?
  inputBinding:
    prefix: -cfile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- backtranseq
