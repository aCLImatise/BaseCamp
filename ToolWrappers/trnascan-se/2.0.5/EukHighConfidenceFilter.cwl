class: CommandLineTool
id: EukHighConfidenceFilter.cwl
inputs:
- id: in_result
  doc: tRNAscan-SE output file used as input
  type: File?
  inputBinding:
    prefix: --result
- id: in_ss
  doc: tRNAscan-SE secondary structure file used as input
  type: File?
  inputBinding:
    prefix: --ss
- id: in_output
  doc: Directory where output files will be written
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_prefix
  doc: Prefix for output file name
  type: File?
  inputBinding:
    prefix: --prefix
- id: in_remove
  doc: 'Remove filtered tRNA hits (default: filtered tRNA hits are only tagged)'
  type: boolean?
  inputBinding:
    prefix: --remove
- id: in_cm_score_one
  doc: Domain-specific model score cutoff for secondary filtering (default = 50; -1
    if not used for filtering)
  type: long?
  inputBinding:
    prefix: --cmscore1
- id: in_ss_score_one
  doc: Secondary structure score cutoff for secondary filtering (default = 10; -1
    if not used for filtering)
  type: long?
  inputBinding:
    prefix: --ssscore1
- id: in_iso_score_one
  doc: Isotype-specific model score cutoff for secondary filtering (default = 70;
    -1 if not used for filtering)
  type: long?
  inputBinding:
    prefix: --isoscore1
- id: in_iso_score_two
  doc: Isotype-specific model starting score cutoff for tertiary filtering (default
    = 70; -1 if not used for filtering)
  type: long?
  inputBinding:
    prefix: --isoscore2
- id: in_iso_max_score_two
  doc: Maximum isotype-specific model score cutoff for tertiary filtering (default
    = 95)
  type: long?
  inputBinding:
    prefix: --isomaxscore2
- id: in_e_uk_quality_filter
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Directory where output files will be written
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_prefix
  doc: Prefix for output file name
  type: File?
  outputBinding:
    glob: $(inputs.in_prefix)
hints: []
cwlVersion: v1.1
baseCommand:
- EukHighConfidenceFilter
