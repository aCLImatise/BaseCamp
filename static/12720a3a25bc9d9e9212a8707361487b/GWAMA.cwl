class: CommandLineTool
id: GWAMA.cwl
inputs:
- id: in_random
  doc: Use random effect correction
  type: string?
  inputBinding:
    prefix: --random
- id: in_genomic_control
  doc: "Use genomic control for\nadjusting studies' result files"
  type: string?
  inputBinding:
    prefix: --genomic_control
- id: in_genomic_control_output
  doc: "Use  genomic\ncontrol on meta-analysis summary.\n(i.e. results  of meta-\n\
    analysis are corrected for gc)"
  type: string?
  inputBinding:
    prefix: --genomic_control_output
- id: in_quantitative
  doc: "Use this option, if trait is\nquantitative (columns BETA & SE).\nDefault is\
    \ binary trait (columns OR,\nOR95_U, OR_95_L)"
  type: long?
  inputBinding:
    prefix: --quantitative
- id: in_threshold
  doc: "or -t {0-1} The p-value threshold\nfor showing direction. Default = 1"
  type: string?
  inputBinding:
    prefix: --threshold
- id: in_map
  doc: "or -m {filename} Marker position\nfile for chromosome and position info"
  type: string?
  inputBinding:
    prefix: --map
- id: in_no_alleles
  doc: "No allele information has been given.\nExpecting always the same EA."
  type: boolean?
  inputBinding:
    prefix: --no_alleles
- id: in_in_del_alleles
  doc: "Allele labes might contain more\nthan single letter. No strand checks."
  type: boolean?
  inputBinding:
    prefix: --indel_alleles
- id: in_sex
  doc: "Run gender-differentiated and gender-\nheterogeneity analysis. Gender info\n\
    must be provided in filelist file.\n(second column after file names is\neither\
    \ M or F) More info in tutorial."
  type: boolean?
  inputBinding:
    prefix: --sex
- id: in_filter
  doc: "Set a filtering based on column\nheader. It needs 3 arguments: column\nname,\
    \ equation [>,<,>=,<=,==,!=],\nfilter value. Multiple filters can be\nset."
  type: boolean?
  inputBinding:
    prefix: --filter
- id: in_name_marker
  doc: alternative header to marker name col
  type: boolean?
  inputBinding:
    prefix: --name_marker
- id: in_name_strand
  doc: alternative header to strand column
  type: boolean?
  inputBinding:
    prefix: --name_strand
- id: in_name_n
  doc: alternative header to sample size col
  type: boolean?
  inputBinding:
    prefix: --name_n
- id: in_name_eaf
  doc: alternative header to EAF column
  type: boolean?
  inputBinding:
    prefix: --name_eaf
- id: in_name_beta
  doc: alternative header to beta column
  type: boolean?
  inputBinding:
    prefix: --name_beta
- id: in_name_se
  doc: alternative header to std. err. col
  type: boolean?
  inputBinding:
    prefix: --name_se
- id: in_name_or
  doc: alternative header to OR column
  type: boolean?
  inputBinding:
    prefix: --name_or
- id: in_name_or_nine_five_l
  doc: alternative header to OR 95L column
  type: boolean?
  inputBinding:
    prefix: --name_or_95l
- id: in_name_or_nine_five_u
  doc: alternative header to OR 95U column
  type: boolean?
  inputBinding:
    prefix: --name_or_95u
- id: in_gw_am_a_dot_in
  doc: '--output {fileroot} or -o  {fileroot} Specify file   '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- GWAMA
