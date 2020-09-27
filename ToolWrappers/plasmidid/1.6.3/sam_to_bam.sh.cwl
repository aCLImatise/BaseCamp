class: CommandLineTool
id: sam_to_bam.sh.cwl
inputs:
- id: in_output_directory_optional
  doc: "file\n-o output directory (optional). By default the BAM file will replace\
    \ SAM in the same location\n-s sample name\n-g group name (optional). If unset,\
    \ samples will be gathered in NO_GROUP group\n-T number of threads\n-v version\n\
    -h display usage message"
  type: long
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sam_to_bam.sh
