class: CommandLineTool
id: pmp_bf.cwl
inputs:
- id: in_hb
  doc: "--model single|average|jc|k2|f81|f84|hky|tn (default=f81)\n--pur-pyr <float>\
    \ (default=1.0)\n--transition-transversion <float> (default=0.5)\n--bg <float>\
    \ (default=1.0)\n--fg <float> (default=1.0)\n--motif <id> (default=all)\n--bfile\
    \ <background> (default from motif file)\n--pseudocount <float> (default=0.1)\n\
    --ustar <label>\n--verbosity [1|2|3|4] (default 2)"
  type: boolean
  inputBinding:
    prefix: --hb
- id: in_pmp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_tree_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_meme_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pmp_bf
