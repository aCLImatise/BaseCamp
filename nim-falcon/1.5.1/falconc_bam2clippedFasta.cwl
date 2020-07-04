class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/falconc_bam2clippedFasta.cwl
inputs:
- id: help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean
  inputBinding:
    prefix: --help-syntax
- id: _inbam_string
  doc: =, --in-bam=  string  REQUIRED  input bam name
  type: boolean
  inputBinding:
    prefix: -i
- id: _region_string
  doc: =, --region=  string  REQUIRED  htslib formatted region seqid:start-end
  type: boolean
  inputBinding:
    prefix: -r
- id: _flag_int
  doc: =, --flag=    int     3844      filter reads with flag
  type: boolean
  inputBinding:
    prefix: -f
- id: flip_rc
  doc: bool    false     reverse complement (RC) the sequence if alignment is in RC
  type: boolean
  inputBinding:
    prefix: --flip-rc
outputs: []
cwlVersion: v1.1
baseCommand:
- falconc
- bam2clippedFasta
