class: CommandLineTool
id: phyluce_genetrees_sort_multilocus_bootstraps.cwl
inputs:
- id: in_input
  doc: "The input directory containing bootstrap replicates\nfor each locus"
  type: Directory?
  inputBinding:
    prefix: --input
- id: in_file_containing_replicate
  doc: The file containing bootstrap replicate sampling
  type: File?
  inputBinding:
    prefix: --bootstrap_replicates
- id: in_output
  doc: The output directory to multi-locus bootstraps
  type: Directory?
  inputBinding:
    prefix: --output
- id: in__output_output
  doc: --output OUTPUT
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The output directory to multi-locus bootstraps
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_genetrees_sort_multilocus_bootstraps
