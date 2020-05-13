class: CommandLineTool
id: BuildDatabase.cwl
inputs:
- id: or
  doc: 'BuildDatabase [-options] -name "mydb"  -dir <dir containing fasta files *.fa,
    *.fasta, *.fast, *.FA, *.FASTA, *.FAST, *.dna, and  *.DNA > '
  type: string
  inputBinding:
    position: 0
- id: or
  doc: BuildDatabase [-options] -name "mydb"  -batch <file containing a list of fasta
    files>
  type: string
  inputBinding:
    position: 1
- id: name
  doc: The name of the database to create.
  type: string
  inputBinding:
    prefix: -name
- id: engine
  doc: The name of the search engine we are using. I.e abblast/wublast or rmblast.
  type: string
  inputBinding:
    prefix: -engine
- id: dir
  doc: The name of a directory containing fasta files to be processed. The files are
    recognized by their suffix. Only *.fa and *.fasta files are processed.
  type: Directory
  inputBinding:
    prefix: -dir
- id: batch
  doc: The name of a file which contains the names of fasta files to process. The
    files names are listed one per line and should be fully qualified.
  type: File
  inputBinding:
    prefix: -batch
outputs: []
cwlVersion: v1.1
baseCommand:
- BuildDatabase
