class: CommandLineTool
id: metabinkit_blastgendb.cwl
inputs:
- id: in_mapping_sequence_i
  doc: "- mapping between the sequence id and the taxid (tab separted). if none is\
    \ found it will look for taxid=xxxx; in the fasta header after the first space\
    \ and consider the word up to the first space or | as the sequence id.\n-o outfile\n\
    -c                 - check database after creating it\n-t threads         - maximum\
    \ number of threads (default:2)\n-v                 - print version and exit\n\
    -h                 - provides usage information\n"
  type: File
  inputBinding:
    prefix: -f
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- metabinkit_blastgendb
