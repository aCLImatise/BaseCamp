class: CommandLineTool
id: ../../../ceinutil.py.cwl
inputs:
- id: in_debug
  doc: Enable verbose tracebacks to debug this program
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_output
  doc: Output file. Defaults to standard output
  type: File
  inputBinding:
    prefix: --output
- id: in_topology_file_used
  doc: Topology file to be used in constant Redox Potential
  type: File
  inputBinding:
    prefix: -p
- id: in_i_gb
  doc: "Generalized Born model which you intend to use to\nevaluate dynamics (or protonation\
    \ state swaps).\nDefault is 2."
  type: long
  inputBinding:
    prefix: -igb
- id: in_int_diel
  doc: "Internal dielectric constant to use in the evaluation\nof the GB potential.\
    \ Default 1.0."
  type: double
  inputBinding:
    prefix: -intdiel
- id: in_res_names
  doc: "[RES [RES ...]]\nResidue names to include in CEIN file"
  type: boolean
  inputBinding:
    prefix: -resnames
- id: in_not_res_names
  doc: "[RES [RES ...]]\nResidue names to exclude from CEIN file"
  type: boolean
  inputBinding:
    prefix: -notresnames
- id: in_res_nums
  doc: "[NUM [NUM ...]]\nResidue numbers to include in CEIN file"
  type: boolean
  inputBinding:
    prefix: -resnums
- id: in_not_res_nums
  doc: "[NUM [NUM ...]]\nResidue numbers to exclude from CEIN file"
  type: boolean
  inputBinding:
    prefix: -notresnums
- id: in_mineo
  doc: "Minimum reference standard Redox Potential (given in\nVolts) to include in\
    \ CEIN file"
  type: File
  inputBinding:
    prefix: -mineo
- id: in_max_eo
  doc: "Maximum reference standard Redox Potential (given in\nVolts) to include in\
    \ CEIN file"
  type: File
  inputBinding:
    prefix: -maxeo
- id: in_states
  doc: "[NUM [NUM ...]]\nList of default states to assign to titratable\nresidues"
  type: boolean
  inputBinding:
    prefix: -states
- id: in_system
  doc: Name of system to titrate. No effect on simulation.
  type: string
  inputBinding:
    prefix: -system
- id: in_describe
  doc: "[RESNAME [RESNAME ...]]\nPrint out the details of given residues"
  type: boolean
  inputBinding:
    prefix: --describe
- id: in_list
  doc: List all titratable residues
  type: boolean
  inputBinding:
    prefix: --list
- id: in_simulation
  doc: 'Simulation Options:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file. Defaults to standard output
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- ceinutil.py
