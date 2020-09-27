class: CommandLineTool
id: draw_circos_images.sh.cwl
inputs:
- id: in_directory_containing_files
  doc: "directory containing files to represent\n-d directory containing config files\n\
    -C config file selected to draw\n-s sample\n-g group\n-l log file\n-o output directory\
    \ to create config and pictures\n-c clean: remove config files\n-v version\n-V\
    \ verbose\n-h display usage message\n"
  type: File
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_directory_containing_files
  doc: "directory containing files to represent\n-d directory containing config files\n\
    -C config file selected to draw\n-s sample\n-g group\n-l log file\n-o output directory\
    \ to create config and pictures\n-c clean: remove config files\n-v version\n-V\
    \ verbose\n-h display usage message\n"
  type: File
  outputBinding:
    glob: $(inputs.in_directory_containing_files)
cwlVersion: v1.1
baseCommand:
- draw_circos_images.sh
