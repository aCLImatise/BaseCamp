class: CommandLineTool
id: ../../../metabinkit_blastgendb.cwl
inputs:
- id: in_mapping_sequence_i
  doc: '- mapping between the sequence id and the taxid (tab separted). if none is
    found it will look for taxid=xxxx; in the fasta header after the first space and
    consider the word up to the first space or | as the sequence id.'
  type: File
  inputBinding:
    prefix: -f
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_check_database_creating
  doc: '- check database after creating it'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_maximum_number_threads
  doc: '- maximum number of threads (default:2)'
  type: long
  inputBinding:
    prefix: -t
- id: in_print_version_exit
  doc: '- print version and exit'
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- metabinkit_blastgendb
