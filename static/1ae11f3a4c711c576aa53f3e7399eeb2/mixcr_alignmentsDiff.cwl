class: CommandLineTool
id: mixcr_alignmentsDiff.cwl
inputs:
- id: in_no_warnings
  doc: Suppress all warning messages.
  type: boolean
  inputBinding:
    prefix: --no-warnings
- id: in_verbose
  doc: Verbose warning messages.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_force_overwrite
  doc: Force overwrite of output file(s).
  type: File
  inputBinding:
    prefix: --force-overwrite
- id: in_only_in_first
  doc: output for alignments contained only in the first .vdjca file
  type: File
  inputBinding:
    prefix: --only-in-first
- id: in_only_in_second
  doc: output for alignments contained only in the second .vdjca file
  type: File
  inputBinding:
    prefix: --only-in-second
- id: in_diff_from_first
  doc: "output for alignments from the first file that are different from those\n\
    alignments in the second file"
  type: File
  inputBinding:
    prefix: --diff-from-first
- id: in_diff_from_second
  doc: "output for alignments from the second file that are different from those\n\
    alignments in the first file"
  type: File
  inputBinding:
    prefix: --diff-from-second
- id: in_gene_feature
  doc: Specifies a gene feature to compare
  type: string
  inputBinding:
    prefix: --gene-feature
- id: in_top_hits_level
  doc: "Number of top hits to search for a match\n"
  type: long
  inputBinding:
    prefix: --top-hits-level
- id: in_scr
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_alignments_diff
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_gene_feature_to_match
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_only_second
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_in_one
  doc: ''
  type: long
  inputBinding:
    position: 4
- id: in_in_two
  doc: ''
  type: long
  inputBinding:
    position: 5
- id: in_report
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force_overwrite
  doc: Force overwrite of output file(s).
  type: File
  outputBinding:
    glob: $(inputs.in_force_overwrite)
- id: out_only_in_first
  doc: output for alignments contained only in the first .vdjca file
  type: File
  outputBinding:
    glob: $(inputs.in_only_in_first)
- id: out_only_in_second
  doc: output for alignments contained only in the second .vdjca file
  type: File
  outputBinding:
    glob: $(inputs.in_only_in_second)
- id: out_diff_from_first
  doc: "output for alignments from the first file that are different from those\n\
    alignments in the second file"
  type: File
  outputBinding:
    glob: $(inputs.in_diff_from_first)
- id: out_diff_from_second
  doc: "output for alignments from the second file that are different from those\n\
    alignments in the first file"
  type: File
  outputBinding:
    glob: $(inputs.in_diff_from_second)
cwlVersion: v1.1
baseCommand:
- mixcr
- alignmentsDiff
