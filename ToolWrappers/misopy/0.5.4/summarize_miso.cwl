class: CommandLineTool
id: summarize_miso.cwl
inputs:
- id: in_summarize_samples
  doc: "Compute summary statistics of the given set of\nsamples. Expects a directory\
    \ with MISO output and a\ndirectory to output summary file to."
  type: File
  inputBinding:
    prefix: --summarize-samples
- id: in_summary_label
  doc: "Label for MISO summary file. If not given, uses\nbasename of MISO output directory."
  type: File
  inputBinding:
    prefix: --summary-label
- id: in_use_compressed
  doc: "Use compressed event IDs. Takes as input a\ngenes_to_filenames.shelve file\
    \ produced by the\nindex_gff script.\n"
  type: File
  inputBinding:
    prefix: --use-compressed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_summarize_samples
  doc: "Compute summary statistics of the given set of\nsamples. Expects a directory\
    \ with MISO output and a\ndirectory to output summary file to."
  type: File
  outputBinding:
    glob: $(inputs.in_summarize_samples)
- id: out_summary_label
  doc: "Label for MISO summary file. If not given, uses\nbasename of MISO output directory."
  type: File
  outputBinding:
    glob: $(inputs.in_summary_label)
cwlVersion: v1.1
baseCommand:
- summarize_miso
