class: CommandLineTool
id: compare_miso.cwl
inputs:
- id: in_compare_samples
  doc: "Compute comparison statistics between the two given\nsamples. Expects three\
    \ directories: the first is\nsample1's MISO output, the second is sample2's MISO\n\
    output, and the third is the directory where results\nof the sample comparison\
    \ will be outputted."
  type: Directory?
  inputBinding:
    prefix: --compare-samples
- id: in_comparison_labels
  doc: "Use these labels for the sample comparison made by\n--compare-samples. Takes\
    \ two arguments: the label for\nsample 1 and the label for sample 2, where sample\
    \ 1\nand sample 2 correspond to the order of samples given\nto --compare-samples."
  type: long?
  inputBinding:
    prefix: --comparison-labels
- id: in_use_compressed
  doc: "Use compressed event IDs. Takes as input a\ngenes_to_filenames.shelve file\
    \ produced by the\nindex_gff script.\n"
  type: File?
  inputBinding:
    prefix: --use-compressed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_compare_samples
  doc: "Compute comparison statistics between the two given\nsamples. Expects three\
    \ directories: the first is\nsample1's MISO output, the second is sample2's MISO\n\
    output, and the third is the directory where results\nof the sample comparison\
    \ will be outputted."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_compare_samples)
hints: []
cwlVersion: v1.1
baseCommand:
- compare_miso
