class: CommandLineTool
id: menecof.cwl
inputs:
- id: draft_net
  doc: metabolic network in SBML format
  type: string
  inputBinding:
    prefix: --draftnet
- id: seeds
  doc: seeds in SBML format
  type: string
  inputBinding:
    prefix: --seeds
- id: targets
  doc: targets in SBML format
  type: string
  inputBinding:
    prefix: --targets
- id: cofactors
  doc: cofactors, in one-per-line text file format
  type: string
  inputBinding:
    prefix: --cofactors
- id: suffix
  doc: suffix to be added to the compounds of the database. It can be the suffix for
    the cytosolic compartment or external one. Cytosolic one is prefered to ensure
    the impact of the added cofactors. Default = None
  type: string
  inputBinding:
    prefix: --suffix
- id: weight
  doc: call this option if cofactors are weighted according to their occurrence frequency
    in database. If so, cofactors file must be tabulated with per line compound' 'occurrence
  type: boolean
  inputBinding:
    prefix: --weight
- id: enumerate
  doc: enumerates all cofactors solutions
  type: boolean
  inputBinding:
    prefix: --enumerate
outputs: []
cwlVersion: v1.1
baseCommand:
- menecof
