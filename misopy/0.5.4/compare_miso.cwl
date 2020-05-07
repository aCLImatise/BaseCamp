class: CommandLineTool
id: compare_miso.cwl
inputs:
- id: compare_samples
  doc: "Compute comparison statistics between the two given samples. Expects three\
    \ directories: the first is sample1's MISO output, the second is sample2's MISO\
    \ output, and the third is the directory where results of the sample comparison\
    \ will be outputted."
  type: string
  inputBinding:
    prefix: --compare-samples
- id: comparison_labels
  doc: 'Use these labels for the sample comparison made by --compare-samples. Takes
    two arguments: the label for sample 1 and the label for sample 2, where sample
    1 and sample 2 correspond to the order of samples given to --compare-samples.'
  type: string
  inputBinding:
    prefix: --comparison-labels
- id: use_compressed
  doc: Use compressed event IDs. Takes as input a genes_to_filenames.shelve file produced
    by the index_gff script.
  type: string
  inputBinding:
    prefix: --use-compressed
outputs: []
cwlVersion: v1.1
baseCommand:
- compare_miso
