class: CommandLineTool
id: cpinutil.py.cwl
inputs:
- id: in_debug
  doc: Enable verbose tracebacks to debug this program
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_old_format
  doc: "Print output file in a format compatible with Amber 16\nand older versions"
  type: File?
  inputBinding:
    prefix: --old-format
- id: in_output
  doc: Output file. Defaults to standard output
  type: File?
  inputBinding:
    prefix: --output
- id: in_output_prm_top
  doc: "For explicit solvent simulations, a custom set of\nradii are necessary to\
    \ obtain reasonable results for\ncarboxylate pKas (e.g., AS4 and GL4 residues).\
    \ If\nspecified, this file will be the prmtop compatible\nwith the reference energies\
    \ in the printed cpin file."
  type: File?
  inputBinding:
    prefix: --output-prmtop
- id: in_topology_file_used
  doc: Topology file to be used in constant pH simulation
  type: File?
  inputBinding:
    prefix: -p
- id: in_i_gb
  doc: "Generalized Born model which you intend to use to\nevaluate dynamics (or protonation\
    \ state swaps).\nDefault is 2."
  type: long?
  inputBinding:
    prefix: -igb
- id: in_int_diel
  doc: "Internal dielectric constant to use in the evaluation\nof the GB potential.\
    \ Default 1.0."
  type: double?
  inputBinding:
    prefix: -intdiel
- id: in_res_names
  doc: "[RES [RES ...]]\nResidue names to include in CPIN file"
  type: boolean?
  inputBinding:
    prefix: -resnames
- id: in_not_res_names
  doc: "[RES [RES ...]]\nResidue names to exclude from CPIN file"
  type: boolean?
  inputBinding:
    prefix: -notresnames
- id: in_res_nums
  doc: "[NUM [NUM ...]]\nResidue numbers to include in CPIN file"
  type: boolean?
  inputBinding:
    prefix: -resnums
- id: in_not_res_nums
  doc: "[NUM [NUM ...]]\nResidue numbers to exclude from CPIN file"
  type: boolean?
  inputBinding:
    prefix: -notresnums
- id: in_min_pka
  doc: Minimum reference pKa to include in CPIN file
  type: File?
  inputBinding:
    prefix: -minpKa
- id: in_max_pka
  doc: Maximum reference pKa to include in CPIN file
  type: File?
  inputBinding:
    prefix: -maxpKa
- id: in_states
  doc: "[NUM [NUM ...]]\nList of default states to assign to titratable\nresidues"
  type: boolean?
  inputBinding:
    prefix: -states
- id: in_system
  doc: Name of system to titrate. No effect on simulation.
  type: string?
  inputBinding:
    prefix: -system
- id: in_describe
  doc: "[RESNAME [RESNAME ...]]\nPrint out the details of given residues"
  type: boolean?
  inputBinding:
    prefix: --describe
- id: in_list
  doc: List all titratable residues
  type: boolean?
  inputBinding:
    prefix: --list
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_old_format
  doc: "Print output file in a format compatible with Amber 16\nand older versions"
  type: File?
  outputBinding:
    glob: $(inputs.in_old_format)
- id: out_output
  doc: Output file. Defaults to standard output
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- cpinutil.py
