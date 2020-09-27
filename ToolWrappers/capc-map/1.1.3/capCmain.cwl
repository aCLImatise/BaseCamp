class: CommandLineTool
id: capCmain.cwl
inputs:
- id: in_bed_file_restriction
  doc: frag_file   is a bed file of restriction enzyme fragments genome wide
  type: boolean
  inputBinding:
    prefix: -r
- id: in_targfile_bed_file
  doc: targ_file   is a bed file of capture targets
  type: boolean
  inputBinding:
    prefix: -t
- id: in_sam_file_containing
  doc: "sam_file    is a SAM file containing groups of aligned\ndigested fragments,\
    \ sorted by name"
  type: boolean
  inputBinding:
    prefix: -s
- id: in_name_first_part
  doc: name        is the first part of the output file name
  type: File
  inputBinding:
    prefix: -o
- id: in_exclusion_zone_reporter
  doc: "exclusion zone; reporter fragments mapping within N bp of\na target fragment\
    \ are discarder. Default N=500."
  type: long
  inputBinding:
    prefix: -e
- id: in_save_interchromosomal_saved
  doc: "save interchromosomal. If present, interchomosomal\ninteractions will be saved\
    \ as well as counted.\n"
  type: boolean
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_first_part
  doc: name        is the first part of the output file name
  type: File
  outputBinding:
    glob: $(inputs.in_name_first_part)
cwlVersion: v1.1
baseCommand:
- capCmain
