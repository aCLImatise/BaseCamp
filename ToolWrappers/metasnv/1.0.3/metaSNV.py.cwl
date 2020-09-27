class: CommandLineTool
id: metaSNV.py.cwl
inputs:
- id: in_db_ann
  doc: Database gene annotation.
  type: File
  inputBinding:
    prefix: --db_ann
- id: in_print_commands
  doc: Instead of executing the commands, simply print them
  type: boolean
  inputBinding:
    prefix: --print-commands
- id: in_dir
  doc: A metaSNP initialized project directory
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: File with an input list of bam files, one file per
  type: File
  inputBinding:
    position: 1
- id: in_line
  doc: REF_DB_FILE           reference multi-sequence FASTA file used for the
  type: string
  inputBinding:
    position: 2
- id: in_alignments_dot
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 3
- id: in_out
  doc: --threads INT         Number of jobs to run simmultaneously. Will create
  type: string
  inputBinding:
    position: 4
- id: in_differently_dot
  doc: --n_splits INT        Number of bins to split ref into
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- metaSNV.py
