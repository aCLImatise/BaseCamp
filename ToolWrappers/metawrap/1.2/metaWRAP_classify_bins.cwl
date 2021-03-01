class: CommandLineTool
id: metaWRAP_classify_bins.cwl
inputs:
- id: in_folder_bins_classified
  doc: folder with the bins to be classified (in fasta format)
  type: Directory?
  inputBinding:
    prefix: -b
- id: in_output_directory
  doc: output directory
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_number_of_threads
  doc: number of threads
  type: long?
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- metaWRAP
- classify_bins
