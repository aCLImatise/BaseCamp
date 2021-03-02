class: CommandLineTool
id: rbdock.cwl
inputs:
- id: in_input
  doc: input ligand SD file
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: output file name(s) prefix
  type: File?
  inputBinding:
    prefix: --output
- id: in_receptor_param
  doc: receptor parameter file
  type: File?
  inputBinding:
    prefix: --receptor-param
- id: in_docking_param
  doc: docking protocol parameter file
  type: File?
  inputBinding:
    prefix: --docking-param
- id: in_number
  doc: "number of runs per ligand (0 = unlimited)\n(default: 0)"
  type: long?
  inputBinding:
    prefix: --number
- id: in_proton_ate
  doc: protonate all neutral amines, guanidines,
  type: boolean?
  inputBinding:
    prefix: --protonate
- id: in_all_hydrogens
  doc: read all hydrogens present instead of only polar
  type: boolean?
  inputBinding:
    prefix: --all-hydrogens
- id: in_continue
  doc: "continue if score threshold is met instead of\nterminating ligand"
  type: boolean?
  inputBinding:
    prefix: --continue
- id: in_filter
  doc: filter file name
  type: File?
  inputBinding:
    prefix: --filter
- id: in_trace
  doc: "controls output level for debugging (0 = minimal,\n>0 = more verbose) (default:\
    \ 0)"
  type: long?
  inputBinding:
    prefix: --trace
- id: in_seed
  doc: "random number seed to use instead of\nstd::random_device"
  type: long?
  inputBinding:
    prefix: --seed
- id: in_t
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_d
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_imidazoles
  doc: -D, --deprotonate         deprotonate all carboxylic, sulphur and
  type: string
  inputBinding:
    position: 0
- id: in_hydrogens
  doc: -t, --threshold arg       score threshold
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output file name(s) prefix
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- rbdock
