class: CommandLineTool
id: rapidNorm.sh.cwl
inputs:
- id: in_out
  doc: ': path to the output directory, directory will be created if non-existent'
  type: File
  inputBinding:
    prefix: --out
- id: in_conf
  doc: ': the config file that defines which rapidStats analysis folders should be
    used'
  type: File
  inputBinding:
    prefix: --conf
- id: in_an_not
  doc: ': bed file with regions that should be used for the comparison'
  type: File
  inputBinding:
    prefix: --annot
- id: in_de_seq
  doc: ': Use only TRUE or FALSE. Set this to TRUE, if you wish to use DESeq2 based
    normalization. Default is FALSE.'
  type: long
  inputBinding:
    prefix: --deseq
- id: in_rapid
  doc: ': set location of the rapid installation bin folder (e.g. /home/software/RAPID/bin/)
    or put into PATH variable'
  type: File
  inputBinding:
    prefix: --rapid
- id: in_restrict_length
  doc: ': Read Lengths to be considered. If not provided, all reads will be used.
    (Multiple read lengths should be separated by commas)'
  type: long
  inputBinding:
    prefix: --restrictlength
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: ': path to the output directory, directory will be created if non-existent'
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- rapidNorm.sh
