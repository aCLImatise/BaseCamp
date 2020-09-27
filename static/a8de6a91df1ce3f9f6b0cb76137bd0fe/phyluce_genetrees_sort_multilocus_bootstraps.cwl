class: CommandLineTool
id: phyluce_genetrees_sort_multilocus_bootstraps.cwl
inputs:
- id: in_bootstrap_replicates
  doc: "BOOTSTRAP_REPLICATES\n--output OUTPUT"
  type: boolean
  inputBinding:
    prefix: --bootstrap_replicates
- id: in_input
  doc: "The input directory containing bootstrap replicates\nfor each locus"
  type: Directory
  inputBinding:
    prefix: --input
- id: in_output
  doc: The output directory to multi-locus bootstraps
  type: Directory
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The output directory to multi-locus bootstraps
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- phyluce_genetrees_sort_multilocus_bootstraps
