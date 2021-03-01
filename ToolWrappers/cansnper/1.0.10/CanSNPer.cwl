class: CommandLineTool
id: CanSNPer.cwl
inputs:
- id: in_reference
  doc: the name of the organism
  type: string?
  inputBinding:
    prefix: --reference
- id: in_query
  doc: fasta sequence file name that is to be analysed
  type: File?
  inputBinding:
    prefix: --query
- id: in_db_path
  doc: path to CanSNPerDB.db
  type: File?
  inputBinding:
    prefix: --db_path
- id: in_import_tree_file
  doc: imports a tree structure into the database
  type: File?
  inputBinding:
    prefix: --import_tree_file
- id: in_import_snp_file
  doc: imports a list of SNPs into the database
  type: File?
  inputBinding:
    prefix: --import_snp_file
- id: in_import_seq_file
  doc: loads a sequence file into the database
  type: File?
  inputBinding:
    prefix: --import_seq_file
- id: in_strain_name
  doc: the name of the strain
  type: string?
  inputBinding:
    prefix: --strain_name
- id: in_allow_differences
  doc: "allow a number of SNPs to be wrong, i.e.continue\nmoving down the tree even\
    \ if none of the SNPs of the\nlower level are present [0]"
  type: long?
  inputBinding:
    prefix: --allow_differences
- id: in_tab_sep
  doc: print the results in a simple tab separated format
  type: boolean?
  inputBinding:
    prefix: --tab_sep
- id: in_draw_tree
  doc: "draw a pdf version of the tree, marking SNPs of the\nquery sequence"
  type: boolean?
  inputBinding:
    prefix: --draw_tree
- id: in_progressive_mauve
  doc: path to progressiveMauve binary file
  type: File?
  inputBinding:
    prefix: --progressiveMauve
- id: in_list_snps
  doc: lists the SNPs of the given sequence
  type: boolean?
  inputBinding:
    prefix: --list_snps
- id: in_verbose
  doc: "prints some more information about the goings-ons of\nthe program while running"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_save_align
  doc: saves the alignment file
  type: boolean?
  inputBinding:
    prefix: --save_align
- id: in_num_threads
  doc: "maximum number of threads CanSNPer is allowed to use,\nthe default [0] is\
    \ no limit, CanSNPer will start one\nprocess per reference genome while aligning"
  type: long?
  inputBinding:
    prefix: --num_threads
- id: in_delete_organism
  doc: deletes all information in the database concerning an
  type: boolean?
  inputBinding:
    prefix: -delete_organism
- id: in_tmp_path
  doc: where temporary files are stored
  type: File?
  inputBinding:
    prefix: --tmp_path
- id: in_dev
  doc: dev mode
  type: boolean?
  inputBinding:
    prefix: --dev
- id: in_galaxy
  doc: "argument used if Galaxy is running CanSNPer, do NOT\nuse.\n"
  type: boolean?
  inputBinding:
    prefix: --galaxy
- id: in_organism
  doc: -initialise_organism  initialise a new table for an organism
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- CanSNPer
