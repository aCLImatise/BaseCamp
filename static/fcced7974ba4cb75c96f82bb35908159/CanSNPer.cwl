class: CommandLineTool
id: CanSNPer.cwl
inputs:
- id: reference
  doc: the name of the organism
  type: string
  inputBinding:
    prefix: --reference
- id: query
  doc: fasta sequence file name that is to be analysed
  type: string
  inputBinding:
    prefix: --query
- id: db_path
  doc: path to CanSNPerDB.db
  type: string
  inputBinding:
    prefix: --db_path
- id: import_tree_file
  doc: imports a tree structure into the database
  type: string
  inputBinding:
    prefix: --import_tree_file
- id: import_snp_file
  doc: imports a list of SNPs into the database
  type: string
  inputBinding:
    prefix: --import_snp_file
- id: import_seq_file
  doc: loads a sequence file into the database
  type: string
  inputBinding:
    prefix: --import_seq_file
- id: strain_name
  doc: the name of the strain
  type: string
  inputBinding:
    prefix: --strain_name
- id: allow_differences
  doc: allow a number of SNPs to be wrong, i.e.continue moving down the tree even
    if none of the SNPs of the lower level are present [0]
  type: string
  inputBinding:
    prefix: --allow_differences
- id: tab_sep
  doc: print the results in a simple tab separated format
  type: boolean
  inputBinding:
    prefix: --tab_sep
- id: draw_tree
  doc: draw a pdf version of the tree, marking SNPs of the query sequence
  type: boolean
  inputBinding:
    prefix: --draw_tree
- id: progressive_mauve
  doc: path to progressiveMauve binary file
  type: string
  inputBinding:
    prefix: --progressiveMauve
- id: list_snps
  doc: lists the SNPs of the given sequence
  type: boolean
  inputBinding:
    prefix: --list_snps
- id: verbose
  doc: prints some more information about the goings-ons of the program while running
  type: boolean
  inputBinding:
    prefix: --verbose
- id: save_align
  doc: saves the alignment file
  type: boolean
  inputBinding:
    prefix: --save_align
- id: num_threads
  doc: maximum number of threads CanSNPer is allowed to use, the default [0] is no
    limit, CanSNPer will start one process per reference genome while aligning
  type: string
  inputBinding:
    prefix: --num_threads
- id: delete_organism
  doc: deletes all information in the database concerning an organism
  type: boolean
  inputBinding:
    prefix: -delete_organism
- id: initialise_organism
  doc: initialise a new table for an organism
  type: boolean
  inputBinding:
    prefix: -initialise_organism
- id: tmp_path
  doc: where temporary files are stored
  type: string
  inputBinding:
    prefix: --tmp_path
- id: dev
  doc: dev mode
  type: boolean
  inputBinding:
    prefix: --dev
- id: galaxy
  doc: argument used if Galaxy is running CanSNPer, do NOT use.
  type: boolean
  inputBinding:
    prefix: --galaxy
outputs: []
cwlVersion: v1.1
baseCommand:
- CanSNPer
