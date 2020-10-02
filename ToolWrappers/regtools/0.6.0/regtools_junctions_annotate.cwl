class: CommandLineTool
id: regtools_junctions_annotate.cwl
inputs:
- id: in_single_exon_genes
  doc: single exon genes
  type: string
  inputBinding:
    prefix: -S
- id: in_file_write_output
  doc: The file to write output to. [STDOUT]
  type: File
  inputBinding:
    prefix: -o
- id: in_junctions_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_annotations_dot_gtf
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_write_output
  doc: The file to write output to. [STDOUT]
  type: File
  outputBinding:
    glob: $(inputs.in_file_write_output)
cwlVersion: v1.1
baseCommand:
- regtools
- junctions
- annotate
