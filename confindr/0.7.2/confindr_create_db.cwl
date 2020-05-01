#!/usr/bin/env cwl-runner

baseCommand:
- confindr_create_db
class: CommandLineTool
cwlVersion: v1.0
id: confindr_create_db
inputs:
- doc: Folder to first store temporary files, and eventually store the created database.
  id: output_folder
  inputBinding:
    prefix: --output_folder
  type: string
- doc: Folder with your input files to try to find core genes. Each gene should be
    in a FASTA file. Expected extension is .fasta
  id: input_folder
  inputBinding:
    prefix: --input_folder
  type: string
- doc: Name of genus you're creating a database for.
  id: genus
  inputBinding:
    prefix: --genus
  type: string
- doc: Minimum number of genes you want to find.
  id: desired_number_genes
  inputBinding:
    prefix: --desired_number_genes
  type: string
