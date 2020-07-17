class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/metaWRAP_classify_bins.cwl
inputs:
- id: folder_bins_classified
  doc: folder with the bins to be classified (in fasta format)
  type: string
  inputBinding:
    prefix: -b
- id: output_directory
  doc: output directory
  type: string
  inputBinding:
    prefix: -o
- id: number_of_threads
  doc: number of threads
  type: long
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- metaWRAP
- classify_bins
