class: CommandLineTool
id: ngs_disambiguate.cwl
inputs:
- id: in__nosortdeprecated_option
  doc: ",  --no-sort\n(Deprecated option for backwards compatibility)"
  type: boolean
  inputBinding:
    prefix: -d
- id: in__prefix_stringrequired
  doc: ",  --prefix <string>\n(required)  Sample ID or name used as prefix. Do not\
    \ include .bam"
  type: string
  inputBinding:
    prefix: -s
- id: in__outputdir_stringrequired
  doc: ",  --output-dir <string>\n(required)  Output directory"
  type: Directory
  inputBinding:
    prefix: -o
- id: in__aligner_stringaligner
  doc: ",  --aligner <string>\nAligner option {tophat(default),hisat2,bwa,star}"
  type: string
  inputBinding:
    prefix: -a
- id: in_var_4
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__outputdir_stringrequired
  doc: ",  --output-dir <string>\n(required)  Output directory"
  type: Directory
  outputBinding:
    glob: $(inputs.in__outputdir_stringrequired)
cwlVersion: v1.1
baseCommand:
- ngs_disambiguate
