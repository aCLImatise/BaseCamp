class: CommandLineTool
id: ../../../prep_1by1.py.cwl
inputs:
- id: fusions
  doc: The input list of fusions for which the supporting reads should be extracted.
  type: string
  inputBinding:
    prefix: --fusions
- id: reads
  doc: The file containing the supporting paired-reads.
  type: string
  inputBinding:
    prefix: --reads
- id: output_list_files_one
  doc: It is a list of files containing the extracted information, regarding preliminary
    candidate fusion genes.
  type: string
  inputBinding:
    prefix: --output-list-files-1
- id: output_list_files_two
  doc: It is a list of files containing the extracted information, regarding reads
    ids which support the preliminary candidate fusion genes.
  type: string
  inputBinding:
    prefix: --output-list-files-2
outputs: []
cwlVersion: v1.1
baseCommand:
- prep-1by1.py
