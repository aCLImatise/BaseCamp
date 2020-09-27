class: CommandLineTool
id: prokka_annotation.sh.cwl
inputs:
- id: in_file_directoryp_prefix
  doc: "file in FASTA format\n-o output directory\n-p prefix for sample identification\
    \ (mandatory) and output file name\n-k kingdom (Bacteria by default)\n-g group\
    \ name (optional). If unset, samples will be gathered in NO_GROUP group\n-G sample\
    \ genus in case is known by user\n-S sample species in case is known by user\n\
    -c clean:remove files other than gff and renamed fasta\n-T number of threads\n\
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
- prokka_annotation.sh
