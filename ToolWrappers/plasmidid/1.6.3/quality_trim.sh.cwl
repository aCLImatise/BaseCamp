class: CommandLineTool
id: quality_trim.sh.cwl
inputs:
- id: in_file_mandatory_
  doc: "file (mandatory)\n-2 R2 file (mandatory)\n-d directory where trimmomatic is\
    \ installed, default: /opt/Trimmomatic/\n-a adapters to remove, default: TruSeq3-PE.fa\n\
    -o output directory (optional)\n-f file name\n-l minimus length of trimmed reads\
    \ (default 40)\n-s sample name (mandatory)\n-g group name (optional). If unset,\
    \ samples will be gathered in NO_GROUP group\n-M RAM memmory (Gb), default 8\n\
    -T threads, default 1\n-v version\n-h display usage message"
  type: long
  inputBinding:
    prefix: '-1'
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- quality_trim.sh
