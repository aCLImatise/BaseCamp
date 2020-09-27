class: CommandLineTool
id: lavToPsl.cwl
inputs:
- id: in_target_strand
  doc: set the target strand to c (default is no strand)
  type: string
  inputBinding:
    prefix: -target-strand
- id: in_bed
  doc: bed instead of psl
  type: string
  inputBinding:
    prefix: -bed
- id: in_score_file
  doc: "output lav scores to side file, such that\neach psl line in out.psl is matched\
    \ by a score line.\n"
  type: File
  inputBinding:
    prefix: -scoreFile
- id: in_in_dot_lav
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_score_file
  doc: "output lav scores to side file, such that\neach psl line in out.psl is matched\
    \ by a score line.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_score_file)
cwlVersion: v1.1
baseCommand:
- lavToPsl
