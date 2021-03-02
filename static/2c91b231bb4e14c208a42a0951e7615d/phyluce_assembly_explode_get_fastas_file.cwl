class: CommandLineTool
id: phyluce_assembly_explode_get_fastas_file.cwl
inputs:
- id: in_input
  doc: The input fasta file to explode
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: "The output directory to create and in which to store\nthe fastas"
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_by_tax_on
  doc: Split file by taxon and not by locus
  type: boolean?
  inputBinding:
    prefix: --by-taxon
- id: in_split_char
  doc: "The character to split on\n"
  type: string?
  inputBinding:
    prefix: --split-char
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "The output directory to create and in which to store\nthe fastas"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_assembly_explode_get_fastas_file
