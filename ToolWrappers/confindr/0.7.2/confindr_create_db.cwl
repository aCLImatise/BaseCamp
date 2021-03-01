class: CommandLineTool
id: confindr_create_db.cwl
inputs:
- id: in_output_folder
  doc: "Folder to first store temporary files, and eventually\nstore the created database."
  type: Directory?
  inputBinding:
    prefix: --output_folder
- id: in_input_folder
  doc: "Folder with your input files to try to find core\ngenes. Each gene should\
    \ be in a FASTA file. Expected\nextension is .fasta"
  type: Directory?
  inputBinding:
    prefix: --input_folder
- id: in_genus
  doc: Name of genus you're creating a database for.
  type: string?
  inputBinding:
    prefix: --genus
- id: in_desired_number_genes
  doc: "Minimum number of genes you want to find.\n"
  type: long?
  inputBinding:
    prefix: --desired_number_genes
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_folder
  doc: "Folder to first store temporary files, and eventually\nstore the created database."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_folder)
hints: []
cwlVersion: v1.1
baseCommand:
- confindr_create_db
