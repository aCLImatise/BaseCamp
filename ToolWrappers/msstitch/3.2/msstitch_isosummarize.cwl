class: CommandLineTool
id: msstitch_isosummarize.cwl
inputs:
- id: in_is_ob_quant_col_pattern
  doc: "[--denompatterns DENOMPATTERNS [DENOMPATTERNS ...]]\n[--denomcols DENOMCOLS\
    \ [DENOMCOLS ...]]\n[--minint MININT] [--targettable TARGETTABLE]\n[--featcol\
    \ FEATCOL]"
  type: string
  inputBinding:
    prefix: --isobquantcolpattern
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
- id: in_denom_patterns
  doc: "Regex patterns to detect denominator channels in a PSM\ntable, when creating\
    \ a table with summarized feature\nisobaric ratios. If both --denompatterns and\n\
    --denomcol are given then column numbers are used.\nUsage e.g. --denompattern\
    \ _126 _131. Also possible:\n--denompattern _12[6-7] to detect multiple columns."
  type: string[]
  inputBinding:
    prefix: --denompatterns
- id: in_denom_cols
  doc: "Column numbers of denominator channels when creating a\nsummarized feature\
    \ table with isobaric ratios from\nPSMs"
  type: string[]
  inputBinding:
    prefix: --denomcols
- id: in_min_int
  doc: "Intensity threshold of PSMs when calculating isobaric\nratios. Values below\
    \ threshold will be set to NA."
  type: long
  inputBinding:
    prefix: --minint
- id: in_target_table
  doc: "Table to output PSM or other feature quant data to.\nUsed when calculating\
    \ PSM isobaric intenstity ratios\nfor proteins, peptides, genes. Leaving empty\
    \ will\noutput to a new table, or when no --featcol is\nspecified, pastes ratios\
    \ to the PSM table they are\nfetched from."
  type: string
  inputBinding:
    prefix: --targettable
- id: in_feat_col
  doc: "Column number in table in which protein or gene\naccessions are. stored. First\
    \ column number is 1. Use\nin case of not using standard {} column\n"
  type: long
  inputBinding:
    prefix: --featcol
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
- isosummarize
