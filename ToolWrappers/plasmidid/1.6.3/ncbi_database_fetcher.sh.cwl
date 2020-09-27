class: CommandLineTool
id: ncbi_database_fetcher.sh.cwl
inputs:
- id: in_key_terms_separated
  doc: "of key terms separated by space to be INCLUDED in sequences title\n-n list\
    \ of key terms separated by space to be EXCLUDED in sequences title\n-O organism\
    \ to filter\n-d database type, default nucleotide\n-o output directory (optional).\
    \ By default the file is placed in cwd\n-f file name (optional). By default is\
    \ the first term used as query\n-q quiet\n-v version\n-h display usage message"
  type: File
  inputBinding:
    prefix: -y
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_key_terms_separated
  doc: "of key terms separated by space to be INCLUDED in sequences title\n-n list\
    \ of key terms separated by space to be EXCLUDED in sequences title\n-O organism\
    \ to filter\n-d database type, default nucleotide\n-o output directory (optional).\
    \ By default the file is placed in cwd\n-f file name (optional). By default is\
    \ the first term used as query\n-q quiet\n-v version\n-h display usage message"
  type: File
  outputBinding:
    glob: $(inputs.in_key_terms_separated)
cwlVersion: v1.1
baseCommand:
- ncbi_database_fetcher.sh
