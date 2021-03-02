class: CommandLineTool
id: chrom_sizes.pl.cwl
inputs:
- id: in_exist_usrlocalbinchromsizespl_line
  doc: not exist at /usr/local/bin/chrom_sizes.pl line 8.
  type: long?
  inputBinding:
    prefix: -h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- chrom_sizes.pl
