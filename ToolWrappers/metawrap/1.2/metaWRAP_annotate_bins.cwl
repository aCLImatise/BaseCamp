class: CommandLineTool
id: metaWRAP_annotate_bins.cwl
inputs:
- id: in_output_directory
  doc: output directory
  type: Directory
  inputBinding:
    prefix: -o
- id: in_number_threads_default
  doc: number of threads (default=1)
  type: long
  inputBinding:
    prefix: -t
- id: in_folder_metagenomic_bins
  doc: folder with metagenomic bins in fasta format
  type: Directory
  inputBinding:
    prefix: -b
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory)
cwlVersion: v1.1
baseCommand:
- metaWRAP
- annotate_bins
