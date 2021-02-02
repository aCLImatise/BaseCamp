class: CommandLineTool
id: ../../../magpurify_gc_content.cwl
inputs:
- id: in_cut_off
  doc: 'Cutoff (default: 15.75)'
  type: double
  inputBinding:
    prefix: --cutoff
- id: in_weighted_mean
  doc: "Compute the mean weighted by the contig length (default:\nFalse)\n"
  type: boolean
  inputBinding:
    prefix: --weighted-mean
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- magpurify
- gc-content
