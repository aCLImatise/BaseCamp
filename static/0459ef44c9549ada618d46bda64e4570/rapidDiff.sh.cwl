class: CommandLineTool
id: rapidDiff.sh.cwl
inputs:
- id: in_conf
  doc: '/ : the config file that defines which rapidStats analysis folders should
    be used'
  type: File?
  inputBinding:
    prefix: --conf
- id: in_alpha
  doc: '(default) : Alpha value cut off for adjusted p-value to use in MAPlot'
  type: long?
  inputBinding:
    prefix: --alpha
- id: in_rapid
  doc: '/ : set location of the rapid installation bin folder (e.g. /home/software/RAPID/bin/)
    or put into PATH variable'
  type: File?
  inputBinding:
    prefix: --rapid
- id: in_restrict_length
  doc: ': Read Lengths to be considered. If not provided, all reads will be used.
    (Multiple read lengths should be separated by commas)'
  type: long?
  inputBinding:
    prefix: --restrictlength
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rapidDiff.sh
