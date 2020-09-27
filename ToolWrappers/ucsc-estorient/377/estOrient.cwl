class: CommandLineTool
id: estOrient.cwl
inputs:
- id: in_chrom
  doc: '- process this chromosome, maybe repeated'
  type: string
  inputBinding:
    prefix: -chrom
- id: in_keep_disoriented
  doc: "- don't drop ESTs where orientation can't\nbe determined."
  type: boolean
  inputBinding:
    prefix: -keepDisoriented
- id: in_disoriented
  doc: "- output ESTs that where orientation can't\nbe determined to this file."
  type: File
  inputBinding:
    prefix: -disoriented
- id: in_incl_ver
  doc: '- add NCBI version number to accession if not already'
  type: boolean
  inputBinding:
    prefix: -inclVer
- id: in_est_orient_info
  doc: "- instead of getting the orientation information\nfrom the estOrientInfo table,\
    \ load it from this file.  This data is the\noutput of polyInfo command.  If this\
    \ option is specified, the direction\nwill not be looked up in the gbCdnaInfo\
    \ table and db can be `no'."
  type: File
  inputBinding:
    prefix: -estOrientInfo
- id: in_info
  doc: "- write information about each EST to this tab\nseparated file\nqName tName\
    \ tStart tEnd origStrand newStrand orient\nwhere orient is < 0 if PSL was reverse,\
    \ > 0 if it was left unchanged\nand 0 if the orientation couldn't be determined\
    \ (and was left\nunchanged).\n"
  type: File
  inputBinding:
    prefix: -info
- id: in_present_dot
  doc: -fileInput - estTable is a psl file
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_disoriented
  doc: "- output ESTs that where orientation can't\nbe determined to this file."
  type: File
  outputBinding:
    glob: $(inputs.in_disoriented)
- id: out_est_orient_info
  doc: "- instead of getting the orientation information\nfrom the estOrientInfo table,\
    \ load it from this file.  This data is the\noutput of polyInfo command.  If this\
    \ option is specified, the direction\nwill not be looked up in the gbCdnaInfo\
    \ table and db can be `no'."
  type: File
  outputBinding:
    glob: $(inputs.in_est_orient_info)
cwlVersion: v1.1
baseCommand:
- estOrient
