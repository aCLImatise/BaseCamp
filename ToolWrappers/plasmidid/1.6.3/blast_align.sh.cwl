class: CommandLineTool
id: blast_align.sh.cwl
inputs:
- id: in_file_fasta_formatd
  doc: "file in FASTA format\n-d database to blast against\n-o output directory, default\
    \ same directory as query\n-p prefix for blast identification (mandatory) and\
    \ output file name\n-q type of query, nucl by default\n-t type of database, nucl\
    \ by default\n-e evalue for blast analysis, default 0.0001\n-T number of threads\n\
    -v version\n-h display usage message"
  type: long
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- blast_align.sh
