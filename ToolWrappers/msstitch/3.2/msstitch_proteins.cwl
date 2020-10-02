class: CommandLineTool
id: msstitch_proteins.cwl
inputs:
- id: in_score_col_pattern
  doc: "[--logscore] [--isobquantcolpattern QUANTCOLPATTERN]\n[--minint MININT]\n\
    [--denomcols DENOMCOLS [DENOMCOLS ...]]\n[--denompatterns DENOMPATTERNS [DENOMPATTERNS\
    \ ...]]\n[--ms1quant] [--psmtable PSMFILE]"
  type: long
  inputBinding:
    prefix: --scorecolpattern
- id: in_input_file_format
  doc: Input file of {} format
  type: File
  inputBinding:
    prefix: -i
- id: in_directory_to_output
  doc: Directory to output in
  type: Directory
  inputBinding:
    prefix: -d
- id: in_output_file
  doc: Output file
  type: File
  inputBinding:
    prefix: -o
- id: in_log_score
  doc: Score, e.g. q-values will be converted to -log10
  type: boolean
  inputBinding:
    prefix: --logscore
- id: in_min_int
  doc: "Intensity threshold of PSMs when calculating isobaric\nratios. Values below\
    \ threshold will be set to NA."
  type: long
  inputBinding:
    prefix: --minint
- id: in_denom_cols
  doc: "Column numbers of denominator channels when creating a\nsummarized feature\
    \ table with isobaric ratios from\nPSMs"
  type: string[]
  inputBinding:
    prefix: --denomcols
- id: in_denom_patterns
  doc: "Regex patterns to detect denominator channels in a PSM\ntable, when creating\
    \ a table with summarized feature\nisobaric ratios. If both --denompatterns and\n\
    --denomcol are given then column numbers are used.\nUsage e.g. --denompattern\
    \ _126 _131. Also possible:\n--denompattern _12[6-7] to detect multiple columns."
  type: string[]
  inputBinding:
    prefix: --denompatterns
- id: in_ms_one_quant
  doc: "Specifies to add precursor quant data from lookup DB\nto output table"
  type: boolean
  inputBinding:
    prefix: --ms1quant
- id: in_psm_table
  doc: "PSM table file containing isobaric quant data to add\nto table.\n"
  type: File
  inputBinding:
    prefix: --psmtable
- id: in_values_dot
  doc: --isobquantcolpattern QUANTCOLPATTERN
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_directory_to_output
  doc: Directory to output in
  type: Directory
  outputBinding:
    glob: $(inputs.in_directory_to_output)
- id: out_output_file
  doc: Output file
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- msstitch
- proteins
