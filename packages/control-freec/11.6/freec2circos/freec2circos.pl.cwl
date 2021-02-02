class: CommandLineTool
id: freec2circos.pl.cwl
inputs:
- id: in_file_file_ratio
  doc: file                   file with ratio
  type: boolean
  inputBinding:
    prefix: -f
- id: in_ploidy_ploidy_default
  doc: ploidy                 ploidy (default 2)
  type: boolean
  inputBinding:
    prefix: -p
- id: in_verbose_mode
  doc: verbose mode
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- freec2circos.pl
