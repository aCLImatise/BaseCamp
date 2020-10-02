class: CommandLineTool
id: FrameBot_index.cwl
inputs:
- id: in_gap_ext_penalty
  doc: gap extension penalty. Default is -4
  type: long
  inputBinding:
    prefix: --gap-ext-penalty
- id: in_frameshift_penalty
  doc: frameshift penalty. Default is -10
  type: long
  inputBinding:
    prefix: --frameshift-penalty
- id: in_gap_open_penalty
  doc: gap opening penalty. Default is -13
  type: long
  inputBinding:
    prefix: --gap-open-penalty
- id: in_max_radius
  doc: "maximum radius for metric-search ONLY, range [1-2147483647]>, default is\n\
    Integer.MAX_VALUE: 2147483647"
  type: long
  inputBinding:
    prefix: --max-radius
- id: in_transl_table
  doc: "Protein translation table to use (integer based on ncbi's translation tables,\n\
    default=11 bacteria/archaea)"
  type: long
  inputBinding:
    prefix: --transl-table
- id: in_scoring_matrix
  doc: "the metric protein scoring matrix. Default is blosum62_metric.txt from Weijia\
    \ Xu's\nthesis: On Integrating Biological Sequence Analysis with Metric Distance"
  type: long
  inputBinding:
    prefix: --scoring-matrix
- id: in_frame_bot_index
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_nucl_seed_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_out_index_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_index_file
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_out_index_file)
cwlVersion: v1.1
baseCommand:
- FrameBot
- index
