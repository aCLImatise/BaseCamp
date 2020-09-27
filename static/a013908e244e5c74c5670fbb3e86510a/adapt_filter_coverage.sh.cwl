class: CommandLineTool
id: adapt_filter_coverage.sh.cwl
inputs:
- id: in_output_directory_optional
  doc: "file\n-o output directory (optional). By default the file is replaced in the\
    \ same location\n-c percentage value to filter >= values. If not supplied, all\
    \ records will be outputted\n-s string to ad at the end of the outputted file\
    \ (list of accession numbers)\n-v version\n-h display usage message"
  type: File
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory_optional
  doc: "file\n-o output directory (optional). By default the file is replaced in the\
    \ same location\n-c percentage value to filter >= values. If not supplied, all\
    \ records will be outputted\n-s string to ad at the end of the outputted file\
    \ (list of accession numbers)\n-v version\n-h display usage message"
  type: File
  outputBinding:
    glob: $(inputs.in_output_directory_optional)
cwlVersion: v1.1
baseCommand:
- adapt_filter_coverage.sh
