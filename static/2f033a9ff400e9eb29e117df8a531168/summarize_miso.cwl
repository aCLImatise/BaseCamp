class: CommandLineTool
id: summarize_miso.cwl
inputs:
- id: summarize_samples
  doc: Compute summary statistics of the given set of samples. Expects a directory
    with MISO output and a directory to output summary file to.
  type: string
  inputBinding:
    prefix: --summarize-samples
- id: summary_label
  doc: Label for MISO summary file. If not given, uses basename of MISO output directory.
  type: string
  inputBinding:
    prefix: --summary-label
- id: use_compressed
  doc: Use compressed event IDs. Takes as input a genes_to_filenames.shelve file produced
    by the index_gff script.
  type: string
  inputBinding:
    prefix: --use-compressed
outputs: []
cwlVersion: v1.1
baseCommand:
- summarize_miso
