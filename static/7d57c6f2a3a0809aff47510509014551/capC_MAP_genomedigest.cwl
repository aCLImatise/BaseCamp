class: CommandLineTool
id: capC_MAP_genomedigest.cwl
inputs:
- id: in_input_fasta_file
  doc: input fasta file of geneome
  type: File
  inputBinding:
    prefix: -i
- id: in_name_cutting_sequence
  doc: name of supported enzyme, or cutting sequence
  type: string
  inputBinding:
    prefix: -r
- id: in_output_bed_file
  doc: output bed file of restriction fragments
  type: File
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_bed_file
  doc: output bed file of restriction fragments
  type: File
  outputBinding:
    glob: $(inputs.in_output_bed_file)
cwlVersion: v1.1
baseCommand:
- capC-MAP
- genomedigest
