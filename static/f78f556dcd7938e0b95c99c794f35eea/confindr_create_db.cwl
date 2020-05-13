class: CommandLineTool
id: confindr_create_db.cwl
inputs:
- id: output_folder
  doc: Folder to first store temporary files, and eventually store the created database.
  type: string
  inputBinding:
    prefix: --output_folder
- id: input_folder
  doc: Folder with your input files to try to find core genes. Each gene should be
    in a FASTA file. Expected extension is .fasta
  type: string
  inputBinding:
    prefix: --input_folder
- id: genus
  doc: Name of genus you're creating a database for.
  type: string
  inputBinding:
    prefix: --genus
- id: desired_number_genes
  doc: Minimum number of genes you want to find.
  type: string
  inputBinding:
    prefix: --desired_number_genes
outputs: []
cwlVersion: v1.1
baseCommand:
- confindr_create_db
