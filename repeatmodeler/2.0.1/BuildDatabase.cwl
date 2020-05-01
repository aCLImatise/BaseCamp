#!/usr/bin/env cwl-runner

baseCommand:
- BuildDatabase
class: CommandLineTool
cwlVersion: v1.0
id: builddatabase
inputs:
- doc: 'BuildDatabase [-options] -name "mydb"  -dir <dir containing fasta files *.fa,
    *.fasta, *.fast, *.FA, *.FASTA, *.FAST, *.dna, and  *.DNA > '
  id: or
  inputBinding:
    position: 0
  type: string
- doc: BuildDatabase [-options] -name "mydb"  -batch <file containing a list of fasta
    files>
  id: or
  inputBinding:
    position: 1
  type: string
- doc: The name of the database to create.
  id: name
  inputBinding:
    prefix: -name
  type: string
- doc: The name of the search engine we are using. I.e abblast/wublast or rmblast.
  id: engine
  inputBinding:
    prefix: -engine
  type: string
- doc: The name of a directory containing fasta files to be processed. The files are
    recognized by their suffix. Only *.fa and *.fasta files are processed.
  id: dir
  inputBinding:
    prefix: -dir
  type: Directory
- doc: The name of a file which contains the names of fasta files to process. The
    files names are listed one per line and should be fully qualified.
  id: batch
  inputBinding:
    prefix: -batch
  type: File
