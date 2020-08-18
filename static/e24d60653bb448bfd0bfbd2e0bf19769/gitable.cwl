class: CommandLineTool
id: ../../../gitable.sh.cwl
inputs:
- id: x_mx_two_zero_g
  doc: specify 20 gigs of RAM.  The max is typically 85% of physical memory.
  type: string
  inputBinding:
    prefix: -Xmx20g
- id: shrunk_dot_dead_nucl_dot_accession_two_taxid_do_tgz
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- gitable.sh
