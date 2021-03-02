class: CommandLineTool
id: anvi_script_snvs_to_interactive.cwl
inputs:
- id: in_min_departure_from_consensus
  doc: "Minimum departure from consensus at a given variable\nnucleotide position.\
    \ The default is 0.00."
  type: double?
  inputBinding:
    prefix: --min-departure-from-consensus
- id: in_max_departure_from_consensus
  doc: "Maximum departure from consensus at a given variable\nnucleotide position.\
    \ The default is 1.00."
  type: double?
  inputBinding:
    prefix: --max-departure-from-consensus
- id: in_min_departure_from_reference
  doc: "Minimum departure from consensus at a given variable\nnucleotide position.\
    \ The default is 0.00."
  type: double?
  inputBinding:
    prefix: --min-departure-from-reference
- id: in_max_departure_from_reference
  doc: "Maximum departure from consensus at a given variable\nnucleotide position.\
    \ The default is 1.00."
  type: double?
  inputBinding:
    prefix: --max-departure-from-reference
- id: in_display_dep_from_reference
  doc: "By default this program will generate a matrix file\nthat displays departure\
    \ from consensus values. This\nflag will switch to departure from reference.\n\
    (default: False)"
  type: boolean?
  inputBinding:
    prefix: --display-dep-from-reference
- id: in_only_in_genes
  doc: "With this flag you will ignore SNVs in non-coding\nregions. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --only-in-genes
- id: in_random
  doc: "Use this parameter to randomly subset your data. If\nthere are too many SNV\
    \ positions, this script may take\nforever to finish. You should *never* let it\
    \ try to\ndeal with more than 25-30K points, but an ideal would\nbe around 4-5\
    \ thousand. (default: None)"
  type: long?
  inputBinding:
    prefix: --random
- id: in_just_do_it
  doc: "Don't bother me with questions or warnings, just do\nit. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --just-do-it
- id: in_output_dir
  doc: 'Directory path for output files (default: None)'
  type: File?
  inputBinding:
    prefix: --output-dir
- id: in_profile
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 2
- id: in_variability_profile_txt
  doc: '🍕 Can provide: '
  type: string
  inputBinding:
    position: 0
- id: in_interactive
  doc: '🍺 More on `anvi-script-snvs-to-interactive`:'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: 'Directory path for output files (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-script-snvs-to-interactive
