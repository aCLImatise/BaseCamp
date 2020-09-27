class: CommandLineTool
id: rename_from_fasta.sh.cwl
inputs:
- id: in_file_rename_file
  doc: "file to rename\n-1 original fata file whose names will be finally printed\n\
    -2 new fata file whose names will be replaced\n-o output directory (optional).\
    \ By default the file is replaced in the same location\n-f output file name (\"\
    .rename\" will be added at the end)\n-d dictionary file to be used if fasta files\
    \ are not supplied\n-v version\n-h display usage message"
  type: File
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_rename_file
  doc: "file to rename\n-1 original fata file whose names will be finally printed\n\
    -2 new fata file whose names will be replaced\n-o output directory (optional).\
    \ By default the file is replaced in the same location\n-f output file name (\"\
    .rename\" will be added at the end)\n-d dictionary file to be used if fasta files\
    \ are not supplied\n-v version\n-h display usage message"
  type: File
  outputBinding:
    glob: $(inputs.in_file_rename_file)
cwlVersion: v1.1
baseCommand:
- rename_from_fasta.sh
