class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/metawrap_annotate_bins.cwl
inputs:
- id: output_directory
  doc: output directory
  type: string
  inputBinding:
    prefix: -o
- id: number_threads_default
  doc: number of threads (default=1)
  type: long
  inputBinding:
    prefix: -t
- id: folder_metagenomic_bins
  doc: folder with metagenomic bins in fasta format
  type: string
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- metawrap
- annotate_bins
