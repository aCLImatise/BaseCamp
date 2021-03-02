class: CommandLineTool
id: falconc_falcon_read2ctg_augment.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean?
  inputBinding:
    prefix: --help-syntax
- id: in_phasefn_string_required
  doc: =, --phase-fn=  string  REQUIRED  read2ctg.txt file
  type: boolean?
  inputBinding:
    prefix: -p
- id: in__string_required
  doc: =, --bam-fn=    string  REQUIRED  bam/sam file of unphased reads mapped
  type: boolean?
  inputBinding:
    prefix: -b
- id: in__outfn_string
  doc: =, --out-fn=    string  REQUIRED  mostly same as read2ctg.txt, but augmented
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_falcon_read_two_ctg_augment
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pb-falconc:1.10.3--he513fc3_0
cwlVersion: v1.1
baseCommand:
- falconc
- falcon-read2ctg-augment
