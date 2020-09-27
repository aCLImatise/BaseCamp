class: CommandLineTool
id: build_karyotype.sh.cwl
inputs:
- id: in_output_directory_optional
  doc: "file\n-o output directory (optional). By default the file is replaced in the\
    \ same location\n-f file name for identification\n-g group name for identification\n\
    -R Reconstruct\n-K percentage value to display plasmids covered >= in summary\
    \ image\n-k percentage value to display plasmids covered >= in individual image\n\
    -v version\n-h display usage message"
  type: File
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory_optional
  doc: "file\n-o output directory (optional). By default the file is replaced in the\
    \ same location\n-f file name for identification\n-g group name for identification\n\
    -R Reconstruct\n-K percentage value to display plasmids covered >= in summary\
    \ image\n-k percentage value to display plasmids covered >= in individual image\n\
    -v version\n-h display usage message"
  type: File
  outputBinding:
    glob: $(inputs.in_output_directory_optional)
cwlVersion: v1.1
baseCommand:
- build_karyotype.sh
