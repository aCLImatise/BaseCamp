class: CommandLineTool
id: antarna.py_MFE.cwl
inputs:
- id: in_cstr
  doc: "Structure constraint using RNA dotbracket notation\nwith fuzzy block constraint.\
    \ (TYPE: str)"
  type: string
  inputBinding:
    prefix: --Cstr
- id: in_pk_parameter
  doc: "Enable optimized parameters for the usage of pseudo\nknots (Further parameter\
    \ input ignored)."
  type: boolean
  inputBinding:
    prefix: --pkparameter
- id: in_pk_program
  doc: "Select a pseudoknot prediction program. If HotKnots is\nused, please specify\
    \ the bin folder of Hotknots with\nabsolute path using HK_PATH argument. (DEFAULT:\
    \ pKiss,\nTYPE: str, Choice: [pKiss|HotKnots|IPKnot])"
  type: File
  inputBinding:
    prefix: --pkprogram
- id: in_hot_knots_path
  doc: "Set HotKnots absolute path, like\n/path/to/HotKnots/bin. If HotKnots is used,\
    \ please\nspecify the bin folder of Hotknots with absolute path\nusing HK_PATH\
    \ argument. (DEFAULT: , TYPE: str"
  type: File
  inputBinding:
    prefix: --HotKnots_PATH
- id: in_strategy
  doc: "Defining the pKiss folding strategy. (DEFAULT: A,\nTYPE: str)\n"
  type: string
  inputBinding:
    prefix: --strategy
- id: in_p
  doc: ''
  type: boolean
  inputBinding:
    prefix: -p
- id: in_installed_dot
  doc: "-p, --pseudoknots     Switch to pseudoknot based prediction using pKiss.\n\
    Check the pseudoknot parameter usage!!!"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- antarna.py
- MFE
