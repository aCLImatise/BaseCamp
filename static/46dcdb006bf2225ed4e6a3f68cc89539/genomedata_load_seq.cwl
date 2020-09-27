class: CommandLineTool
id: genomedata_load_seq.cwl
inputs:
- id: in_assembly
  doc: SEQFILE contains assembly (AGP) files instead of
  type: boolean
  inputBinding:
    prefix: --assembly
- id: in_file_mode
  doc: "If specified, the Genomedata archive will be\nimplemented as a single file,\
    \ with a separate h5 group\nfor each Chromosome. This is recommended if there\
    \ are\na large number of Chromosomes. The default behavior is\nto use a single\
    \ file if there are at least 100\nChromosomes being added."
  type: boolean
  inputBinding:
    prefix: --file-mode
- id: in_directory_mode
  doc: "If specified, the Genomedata archive will be\nimplemented as a directory,\
    \ with a separate file for\neach Chromosome. This is recommended if there are\
    \ a\nsmall number of Chromosomes. The default behavior is\nto use a directory\
    \ if there are fewer than 100\nChromosomes being added."
  type: boolean
  inputBinding:
    prefix: --directory-mode
- id: in_verbose
  doc: Print status updates and diagnostic messages
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_s
  doc: ''
  type: boolean
  inputBinding:
    prefix: -s
- id: in_gd_archive
  doc: genomedata archive
  type: string
  inputBinding:
    position: 0
- id: in_seq_files
  doc: sequences in FASTA format
  type: string
  inputBinding:
    position: 1
- id: in_sequence
  doc: -s, --sizes           SEQFILE contains list of sizes instead of sequence
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- genomedata-load-seq
