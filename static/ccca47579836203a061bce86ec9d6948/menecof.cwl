class: CommandLineTool
id: menecof.cwl
inputs:
- id: in_draft_net
  doc: metabolic network in SBML format
  type: string?
  inputBinding:
    prefix: --draftnet
- id: in_seeds
  doc: seeds in SBML format
  type: string?
  inputBinding:
    prefix: --seeds
- id: in_targets
  doc: targets in SBML format
  type: string?
  inputBinding:
    prefix: --targets
- id: in_cofactors
  doc: cofactors, in one-per-line text file format
  type: File?
  inputBinding:
    prefix: --cofactors
- id: in_suffix
  doc: "suffix to be added to the compounds of the database.\nIt can be the suffix\
    \ for the cytosolic compartment or\nexternal one. Cytosolic one is prefered to\
    \ ensure the\nimpact of the added cofactors. Default = None"
  type: string?
  inputBinding:
    prefix: --suffix
- id: in_weight
  doc: "call this option if cofactors are weighted according\nto their occurrence\
    \ frequency in database. If so,\ncofactors file must be tabulated with per line\n\
    compound' 'occurrence"
  type: boolean?
  inputBinding:
    prefix: --weight
- id: in_enumerate
  doc: enumerates all cofactors solutions
  type: boolean?
  inputBinding:
    prefix: --enumerate
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- menecof
