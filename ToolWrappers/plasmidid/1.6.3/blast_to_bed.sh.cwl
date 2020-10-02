class: CommandLineTool
id: blast_to_bed.sh.cwl
inputs:
- id: in_fileb_blast_identity
  doc: "file\n-b blast identity cutoff (0 - 100), default 90\n-l blast length percentage\
    \ cutoff (0 - 100), default 20, use 90 for genes\n-L blast length alignment cutoff,\
    \ default 0, use 200 or 500 for contigs\n-o output directory (optional). By default\
    \ the file is replaced in the same location\n-q database chraracter delimiter,\
    \ default \"_\"\n-Q query field to retrieve (l=left, r=right), default left\n\
    -d database chraracter delimiter, default \"_\"\n-D database field to retrieve\
    \ (l=left, r=right), default right\n-I contig mode\n-u unique. Outputs only one\
    \ query entry per database entry\n-U unique mode with delimiter. Outputs only\
    \ one delimited query per database entry\n-v version\n-h display usage message"
  type: long
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- blast_to_bed.sh
