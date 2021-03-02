class: CommandLineTool
id: clipkit.cwl
inputs:
- id: in_output
  doc: "output file name\n(default: input file named with '.clipkit' suffix)"
  type: File?
  inputBinding:
    prefix: --output
- id: in_gappy_trimming_medium
  doc: "<gappy,                         trimming mode\nkpic (alias: medium),     \
    \      (default: gappy)\nkpic-gappy (alias: medium-gappy),\nkpi (alias: heavy),\n\
    kpi-gappy (alias: heavy-gappy)>"
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
- id: in_gappy_trim_sites
  doc: "gappy: trim sites that are greater than the gaps threshold\nkpic (alias: medium):\
    \ keeps parismony informative and constant sites\nkpic-gappy (alias: medium-gappy):\
    \ a combination of kpic- and gappy-based trimming\nkpi (alias: heavy): keep only\
    \ parsimony informative sites\nkpi-gappy (alias: heavy-gappy): a combination of\
    \ kpi- and gappy-based trimming"
  type: string
  inputBinding:
    position: 0
- id: in_positions_gappyness_greater
  doc: "Positions with gappyness greater than threshold will be trimmed. \nMust be\
    \ between 0 and 1. (Default: 0.9). This argument is ignored\nwhen using the kpi\
    \ mode of trimming."
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
hints: []
cwlVersion: v1.1
baseCommand:
- clipkit
