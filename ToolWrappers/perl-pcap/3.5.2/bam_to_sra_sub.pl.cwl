class: CommandLineTool
id: bam_to_sra_sub.pl.cwl
inputs:
- id: in_outdir
  doc: Folder to output result to.
  type: Directory?
  inputBinding:
    prefix: -outdir
- id: in_gnos_upload_server
  doc: "GNOS upload server, e.g.\nhttps://gtrepo-ebi.annailabs.com"
  type: boolean?
  inputBinding:
    prefix: -gnos
- id: in_study_reference_repository
  doc: Study reference in repository [icgc_pancancer]
  type: boolean?
  inputBinding:
    prefix: -study
- id: in_type
  doc: "Only required if not encoded in readgroup LB tag.\n[WGS|WXS|RNA-seq]\nSee\
    \ '-m' for details"
  type: boolean?
  inputBinding:
    prefix: -type
- id: in_man
  doc: Full documentation.
  type: boolean?
  inputBinding:
    prefix: -man
- id: in_var_5
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -help
- id: in_brief
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_7
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_folder
  doc: ''
  type: Directory
  inputBinding:
    position: 0
- id: in_var_9
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_10
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_only
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_optional
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_other
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_14
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_15
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_https
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_17
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_list
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_parameters
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_reference
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_var_21
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_upload
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_can
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_if
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_server
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_be
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_not
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_repository
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_result
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_encoded
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_var_34
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_var_35
  doc: ''
  type: File
  inputBinding:
    position: 5
- id: in_names
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_read_group
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_lb
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_tag_dot
  doc: ''
  type: string
  inputBinding:
    position: 8
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Folder to output result to.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- bam_to_sra_sub.pl
