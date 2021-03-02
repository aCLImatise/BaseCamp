class: CommandLineTool
id: locarna_rnafold_pp.cwl
inputs:
- id: in_no_lp
  doc: No lonely pairs
  type: boolean?
  inputBinding:
    prefix: --noLP
- id: in_max_bp_span
  doc: "(-1)\nLimit maximum base pair span (default=off)"
  type: long?
  inputBinding:
    prefix: --maxBPspan
- id: in_stacking
  doc: Compute stacking terms
  type: boolean?
  inputBinding:
    prefix: --stacking
- id: in_dangling
  doc: "(2)\nDangling option value"
  type: long?
  inputBinding:
    prefix: --dangling
- id: in_in_loop
  doc: Compute in-loop probabilities
  type: boolean?
  inputBinding:
    prefix: --in-loop
- id: in_min_prob
  doc: "(0.001)\nMinimal probability"
  type: long?
  inputBinding:
    prefix: --min-prob
- id: in_p_unpaired_in_loop
  doc: "(0.0005)\nThreshold for prob_unpaired_in_loop"
  type: double?
  inputBinding:
    prefix: --p_unpaired_in_loop
- id: in_p_base_pair_in_loop
  doc: "(0.0005)\nThreshold for prob_basepair_in_loop"
  type: double?
  inputBinding:
    prefix: --p_basepair_in_loop
- id: in_output
  doc: "()\nOutput file"
  type: File?
  inputBinding:
    prefix: --output
- id: in_force_ali_fold
  doc: "Force alifold for single sequences\n"
  type: boolean?
  inputBinding:
    prefix: --force-alifold
- id: in_help
  doc: -V,--version
  type: string
  inputBinding:
    position: 0
- id: in_verbose
  doc: -C,--use-struct-constraints
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "()\nOutput file"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- locarna_rnafold_pp
