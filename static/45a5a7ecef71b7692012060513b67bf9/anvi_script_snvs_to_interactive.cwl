class: CommandLineTool
id: anvi_script_snvs_to_interactive.cwl
inputs:
- id: in_min_departure_from_consensus
  doc: "Minimum departure from consensus at a given variable\nnucleotide position.\
    \ The default is 0.00."
  type: double
  inputBinding:
    prefix: --min-departure-from-consensus
- id: in_max_departure_from_consensus
  doc: "Maximum departure from consensus at a given variable\nnucleotide position.\
    \ The default is 1.00."
  type: double
  inputBinding:
    prefix: --max-departure-from-consensus
- id: in_min_departure_from_reference
  doc: "Minimum departure from consensus at a given variable\nnucleotide position.\
    \ The default is 0.00."
  type: double
  inputBinding:
    prefix: --min-departure-from-reference
- id: in_max_departure_from_reference
  doc: "Maximum departure from consensus at a given variable\nnucleotide position.\
    \ The default is 1.00."
  type: double
  inputBinding:
    prefix: --max-departure-from-reference
- id: in_display_dep_from_reference
  doc: "By default this program will generate a matrix file\nthat displays departure\
    \ from consensus values. This\nflag will switch to departure from reference."
  type: boolean
  inputBinding:
    prefix: --display-dep-from-reference
- id: in_only_in_genes
  doc: With this flag you will ignore SNVs in non-coding
  type: boolean
  inputBinding:
    prefix: --only-in-genes
- id: in_just_do_it
  doc: Don't bother me with questions or warnings, just do
  type: boolean
  inputBinding:
    prefix: --just-do-it
- id: in_profile
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 1
- id: in_regions_dot
  doc: --random INTEGER      Use this parameter to randomly subset your data. If
  type: string
  inputBinding:
    position: 2
- id: in_it_dot
  doc: -o DIR_PATH, --output-dir DIR_PATH
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- anvi-script-snvs-to-interactive
