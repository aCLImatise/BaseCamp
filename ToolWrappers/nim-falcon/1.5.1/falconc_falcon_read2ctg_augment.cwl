class: CommandLineTool
id: falconc_falcon_read2ctg_augment.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean
  inputBinding:
    prefix: --help-syntax
- id: in__phasefn_string
  doc: =, --phase-fn=  string  REQUIRED  read2ctg.txt file
  type: boolean
  inputBinding:
    prefix: -p
- id: in__bamfn_string
  doc: =, --bam-fn=    string  REQUIRED  bam/sam file of unphased reads mapped
  type: boolean
  inputBinding:
    prefix: -b
- id: in__outfn_string
  doc: =, --out-fn=    string  REQUIRED  mostly same as read2ctg.txt, but augmented
  type: boolean
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- falconc
- falcon-read2ctg-augment
