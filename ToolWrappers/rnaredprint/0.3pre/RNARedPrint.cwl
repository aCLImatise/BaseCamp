class: CommandLineTool
id: RNARedPrint.cwl
inputs:
- id: in_num
  doc: '- Sets number of generated sequences (default 10)'
  type: long?
  inputBinding:
    prefix: --num
- id: in_count
  doc: '- Simply compute the partition function and report the result.'
  type: boolean?
  inputBinding:
    prefix: --count
- id: in_weights
  doc: ',w2.. - Assigns custom weights to each targeted structure (default 1. for
    all)'
  type: long?
  inputBinding:
    prefix: --weights
- id: in_gcw
  doc: '- Assigns custom weight to each occurrence of GC, to control GC% (default
    1.)'
  type: long?
  inputBinding:
    prefix: --gcw
- id: in_model
  doc: "- Set energy model used for stochastic sampling:\nm = 0: Uniform\nm = 1: Nussinov\
    \ (-3/-2/-1 for GC/AU/GU)\nm = 2: Base pair energy model (Default; distinguishs\
    \ GC/AU/GU, inner/exterior)\nm = 3: Stacking model (no isolated base-pairs!)"
  type: long?
  inputBinding:
    prefix: --model
- id: in_prefix
  doc: '- Prefix path for locating the TD libraries'
  type: boolean?
  inputBinding:
    prefix: --prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- RNARedPrint
