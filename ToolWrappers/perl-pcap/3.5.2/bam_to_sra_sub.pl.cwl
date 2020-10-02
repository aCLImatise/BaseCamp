class: CommandLineTool
id: bam_to_sra_sub.pl.cwl
inputs:
- id: in_outdir
  doc: -o   Folder to output result to.
  type: Directory
  inputBinding:
    prefix: -outdir
- id: in_g_gnos_upload
  doc: "-g   GNOS upload server, e.g.\nhttps://gtrepo-ebi.annailabs.com"
  type: boolean
  inputBinding:
    prefix: -gnos
- id: in_study_reference_repository
  doc: -s   Study reference in repository [icgc_pancancer]
  type: boolean
  inputBinding:
    prefix: -study
- id: in_type
  doc: "-t   Only required if not encoded in readgroup LB tag.\n[WGS|WXS|RNA-seq]\n\
    See '-m' for details"
  type: boolean
  inputBinding:
    prefix: -type
- id: in_man
  doc: -m   Full documentation.
  type: boolean
  inputBinding:
    prefix: -man
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: in_m
  doc: ''
  type: boolean
  inputBinding:
    prefix: -m
- id: in_var_8
  doc: ''
  type: boolean
  inputBinding:
    prefix: -help
- id: in_t
  doc: ''
  type: boolean
  inputBinding:
    prefix: -t
- id: in_g
  doc: ''
  type: boolean
  inputBinding:
    prefix: -g
- id: in_brief
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_12
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_folder
  doc: ''
  type: Directory
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
- id: in_var_19
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_20
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_https
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_my_donor_slash_tumour_slash
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_23
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
- id: in_var_27
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
- id: in_var_40
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_var_41
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
  doc: -o   Folder to output result to.
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- bam_to_sra_sub.pl
