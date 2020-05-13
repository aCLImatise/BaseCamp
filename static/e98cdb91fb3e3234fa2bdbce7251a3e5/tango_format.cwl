class: CommandLineTool
id: tango_format.cwl
inputs:
- id: fast_a_file
  doc: Specify protein fasta to reformat
  type: string
  inputBinding:
    position: 0
- id: reformatted
  doc: Path to reformatted fastafile
  type: string
  inputBinding:
    position: 1
- id: force
  doc: Force overwrite of existing reformatted fastafile
  type: boolean
  inputBinding:
    prefix: --force
- id: force_id_map
  doc: Force overwrite of existing accession2taxid mapfile
  type: boolean
  inputBinding:
    prefix: --forceidmap
- id: taxid_map
  doc: Protein accession to taxid mapfile. For UniRef this file is created from information
    in the fasta headers and stored in a file named prot.accession2taxid.gz in the
    same directory as the reformatted fasta file. Specify another path here.
  type: string
  inputBinding:
    prefix: --taxidmap
- id: max_idle_n
  doc: Maximum allowed length of sequence ids. Defaults to 14 (required by diamond
    for adding taxonomy info to database). Ids longer than this are written to a file
    with the original id
  type: long
  inputBinding:
    prefix: --maxidlen
- id: tmpdir
  doc: Temporary directory for writing fasta files
  type: string
  inputBinding:
    prefix: --tmpdir
outputs: []
cwlVersion: v1.1
baseCommand:
- tango
- format
