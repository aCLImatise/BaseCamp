class: CommandLineTool
id: design_energyshift.py.cwl
inputs:
- id: in_input
  doc: "Read structures from input file. Default: read from\nstdin. Format must be\
    \ dot-bracket structures, each per\none line with a trailing line containing only\
    \ a semi-\ncolon. (default: <_io.TextIOWrapper name='<stdin>'\nmode='r' encoding='utf-8'>)"
  type: File
  inputBinding:
    prefix: --input
- id: in_temperature
  doc: "Temperature of the energy calculations. (default:\n37.0)"
  type: double
  inputBinding:
    prefix: --temperature
- id: in_number
  doc: 'Number of designs to generate (default: 1000)'
  type: long
  inputBinding:
    prefix: --number
- id: in_model
  doc: "Model for getting a new sequence: uniform, nussinov,\nbasepairs, stacking\
    \ (default: basepairs)"
  type: string
  inputBinding:
    prefix: --model
- id: in_energies
  doc: "Target Energies for design. String of comma separated\nfloat values. (default:\
    \ )"
  type: double
  inputBinding:
    prefix: --energies
- id: in_gc
  doc: 'Target GC content. (default: 0.5)'
  type: double
  inputBinding:
    prefix: --gc
- id: in_simple_tolerance
  doc: "Tolerated relative deviation to target energies in the\nsimple model. (default:\
    \ 0.2)"
  type: double
  inputBinding:
    prefix: --simple_tolerance
- id: in_gc_tolerance
  doc: "Tolerated relative deviation to target GC content.\n(default: 0.05)"
  type: double
  inputBinding:
    prefix: --gctolerance
- id: in_tolerance
  doc: "Turner energy tolerance to the target energies\n(default: 1 kcal/mol, turn\
    \ off by values <0) (default:\n1)"
  type: long
  inputBinding:
    prefix: --tolerance
- id: in_csv_output
  doc: "Output csv format (with additional information)\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --csv_output
- id: in_debug
  doc: 'Show debug information of library (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- design-energyshift.py
