class: CommandLineTool
id: process_cluster_output.sh.cwl
inputs:
- id: in_fileb_file_directory
  doc: "file\n-b file with coverage info\n-o output directory (optional). By default\
    \ the file is replaced in the same location\n-c percentage value to filter >=\
    \ values. If not supplied, all records will be outputted\n-s string to ad at the\
    \ end of the outputted file (list of accession numbers)\n-v version\n-h display\
    \ usage message"
  type: File
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_fileb_file_directory
  doc: "file\n-b file with coverage info\n-o output directory (optional). By default\
    \ the file is replaced in the same location\n-c percentage value to filter >=\
    \ values. If not supplied, all records will be outputted\n-s string to ad at the\
    \ end of the outputted file (list of accession numbers)\n-v version\n-h display\
    \ usage message"
  type: File
  outputBinding:
    glob: $(inputs.in_fileb_file_directory)
cwlVersion: v1.1
baseCommand:
- process_cluster_output.sh
