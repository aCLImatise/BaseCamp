class: CommandLineTool
id: tango_format.cwl
inputs:
- id: in_force
  doc: Force overwrite of existing reformatted fastafile
  type: boolean
  inputBinding:
    prefix: --force
- id: in_force_id_map
  doc: Force overwrite of existing accession2taxid mapfile
  type: boolean
  inputBinding:
    prefix: --forceidmap
- id: in_taxid_map
  doc: "Protein accession to taxid mapfile. For UniRef this\nfile is created from\
    \ information in the fasta headers\nand stored in a file named prot.accession2taxid.gz\
    \ in\nthe same directory as the reformatted fasta file.\nSpecify another path\
    \ here."
  type: File
  inputBinding:
    prefix: --taxidmap
- id: in_max_idle_n
  doc: "Maximum allowed length of sequence ids. Defaults to 14\n(required by diamond\
    \ for adding taxonomy info to\ndatabase). Ids longer than this are written to\
    \ a file\nwith the original id"
  type: long
  inputBinding:
    prefix: --maxidlen
- id: in_tmpdir
  doc: Temporary directory for writing fasta files
  type: Directory
  inputBinding:
    prefix: --tmpdir
- id: in_fast_a_file
  doc: Specify protein fasta to reformat
  type: string
  inputBinding:
    position: 0
- id: in_reformatted
  doc: Path to reformatted fastafile
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tango
- format
