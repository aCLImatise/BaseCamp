class: CommandLineTool
id: filter_fasta.sh.cwl
inputs:
- id: in_file_filtero_optional
  doc: "file to filter\n-o output directory (optional). By default the file is replaced\
    \ in the same location\n-n file name (optional). By default is the same as -f\
    \ file with .fasta extension\n-l list of key terms separated by space\n-N Use\
    \ term to discard sequences with terms (Negative filter)\n-G General filter: filter\
    \ any file with a list of keys\n-f file with a list of terms to filter\n-v version\n\
    -h display usage message"
  type: File
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_filtero_optional
  doc: "file to filter\n-o output directory (optional). By default the file is replaced\
    \ in the same location\n-n file name (optional). By default is the same as -f\
    \ file with .fasta extension\n-l list of key terms separated by space\n-N Use\
    \ term to discard sequences with terms (Negative filter)\n-G General filter: filter\
    \ any file with a list of keys\n-f file with a list of terms to filter\n-v version\n\
    -h display usage message"
  type: File
  outputBinding:
    glob: $(inputs.in_file_filtero_optional)
cwlVersion: v1.1
baseCommand:
- filter_fasta.sh
