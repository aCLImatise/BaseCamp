class: CommandLineTool
id: clipkit.cwl
inputs:
- id: in_output
  doc: "output file name\n(default: input file named with '.clipkit' suffix)"
  type: File?
  inputBinding:
    prefix: --output
- id: in_smartgap_trimming_default
  doc: "<smart-gap,                     trimming mode\ngappy,                    \
    \      (default: smart-gap)\nkpic,\nkpic-smart-gap,\nkpic-gappy,\nkpi,\nkpi-smart-gap,\n\
    kpi-gappy>"
  type: boolean?
  inputBinding:
    prefix: --modes
- id: in_specifies_gaps_thresholddefault
  doc: "specifies gaps threshold\n(default: 0.9)"
  type: double?
  inputBinding:
    prefix: --gaps
- id: in_input_file_format
  doc: "specifies input file format\n(default: auto-detect)"
  type: File?
  inputBinding:
    prefix: --input_file_format
- id: in_output_file_format
  doc: "specifies output file format\n(default: same as input file format)"
  type: File?
  inputBinding:
    prefix: --output_file_format
- id: in_creates_fileinput_file
  doc: "creates a log file\n(input file named with '.log' suffix)"
  type: boolean?
  inputBinding:
    prefix: --log
- id: in_creates_complementary_alignment
  doc: "creates complementary alignment of trimmed sequences\n(input file named with\
    \ '.log' suffix)"
  type: boolean?
  inputBinding:
    prefix: --complementary
- id: in_smartgap_dynamic_determination
  doc: "smart-gap: dynamic determination of gaps threshold\ngappy: trim sites that\
    \ are greater than the gaps threshold\nkpic: keeps parismony informative and constant\
    \ sites\nkpic-smart-gap: a combination of kpic- and smart-gap-based trimming\n\
    kpic-gappy: a combination of kpic- and gappy-based trimming\nkpi: keep only parsimony\
    \ informative sites\nkpi-smart-gap: a combination of kpi- and smart-gap-based\
    \ trimming\nkpi-gappy: a combination of kpi- and gappy-based trimming"
  type: string
  inputBinding:
    position: 0
- id: in_positions_gappyness_greater
  doc: "Positions with gappyness greater than threshold will be trimmed. \nMust be\
    \ between 0 and 1. (Default: 0.9). This argument is ignored\nwhen using the kpi\
    \ and kpic mdoes of trimming as well as an\niteration of trimming that uses smart-gap."
  type: string
  inputBinding:
    position: 1
- id: in_creates_log_file
  doc: "Creates a log file that summarizes the characteristics of each position.\n\
    The log file has four columns.\n- Column 1 is the position in the alignment (starting\
    \ at 1),\n- Column 2 reports if the site was trimmed or kept (trim and keep, respectively),\n\
    - Column 3 reports if the site is a parsimony informative site or not (PI and\
    \ nPI, respectively), or\na constant site or not (Const, nConst), or neither (nConst,\
    \ nPI)\n- Column 4 reports the gappyness of the the position (number of gaps /\
    \ entries in alignment)"
  type: string
  inputBinding:
    position: 0
- id: in_creates_alignment_file
  doc: Creates an alignment file of only the trimmed sequences
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "output file name\n(default: input file named with '.clipkit' suffix)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/clipkit:1.1.3--py_0
cwlVersion: v1.1
baseCommand:
- clipkit
