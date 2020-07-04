class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/capCmain.cwl
inputs:
- id: fragfile_bed_file
  doc: frag_file   is a bed file of restriction enzyme fragments genome wide
  type: boolean
  inputBinding:
    prefix: -r
- id: targfile_bed_file
  doc: targ_file   is a bed file of capture targets
  type: boolean
  inputBinding:
    prefix: -t
- id: samfile_sam_file
  doc: sam_file    is a SAM file containing groups of aligned digested fragments,
    sorted by name
  type: boolean
  inputBinding:
    prefix: -s
- id: name_first_part
  doc: name        is the first part of the output file name
  type: boolean
  inputBinding:
    prefix: -o
- id: exclusion_zone_reporter
  doc: exclusion zone; reporter fragments mapping within N bp of a target fragment
    are discarder. Default N=500.
  type: string
  inputBinding:
    prefix: -e
- id: save_interchromosomal_present
  doc: save interchromosomal. If present, interchomosomal interactions will be saved
    as well as counted.
  type: boolean
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- capCmain
