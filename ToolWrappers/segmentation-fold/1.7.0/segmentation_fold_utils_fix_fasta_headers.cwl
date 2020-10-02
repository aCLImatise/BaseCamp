class: CommandLineTool
id: segmentation_fold_utils_fix_fasta_headers.cwl
inputs:
- id: in_fast_a_output_file
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- segmentation-fold-utils
- fix-fasta-headers
