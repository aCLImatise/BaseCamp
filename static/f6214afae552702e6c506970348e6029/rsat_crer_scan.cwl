class: CommandLineTool
id: rsat_crer_scan.cwl
inputs:
- id: in_specified_input_read
  doc: If not specified, input is read from STDIN
  type: File?
  inputBinding:
    prefix: -i
- id: in_in_format
  doc: "input_format. Default: ft (produced by RSAT matrix-\nscan and dna-pattern).\
    \ Supported: ft, bed"
  type: string?
  inputBinding:
    prefix: -in_format
- id: in_output_file_ft
  doc: Output file in ft format
  type: File?
  inputBinding:
    prefix: -o
- id: in_level_verbose_messages
  doc: "level of verbose. Messages are wrote on standard\nerror. Supported: Integer\
    \ = 1,2,3. By default : 1 = No\nmessage. Level 2 : moderately density of messages.\n\
    Level 3 : High density"
  type: long?
  inputBinding:
    prefix: -v
- id: in_auto_param
  doc: "Extract some input parameters from the commented rows\n(starting with ';')\
    \ of the input file. This option is\nonly valid for files produced by matrix-scan\
    \ with a\nverbosity of at least 1."
  type: File?
  inputBinding:
    prefix: -autoparam
- id: in_sort_list_sites
  doc: "sort the list of sites. Very recommended. The sites\nare sorted by center\
    \ position"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_return_limits
  doc: "return every limits of sequences. By default : no\nreturn any limits"
  type: boolean?
  inputBinding:
    prefix: -return_limits
- id: in_return_limits_filtered
  doc: "return the limits filtered of the sequence. Only the\nsequence limits of CRERs.\
    \ By default : no return any\nlimits"
  type: boolean?
  inputBinding:
    prefix: -return_limits_filtered
- id: in_lth_score
  doc: minimal site score to be considered
  type: string?
  inputBinding:
    prefix: -lth_score
- id: in_uth_score
  doc: maximal site score to be considered
  type: string?
  inputBinding:
    prefix: -uth_score
- id: in_uth_site_pval
  doc: "maximal p_value of sites to be considered. recommended\nto be the higher site\
    \ p_value considered"
  type: string?
  inputBinding:
    prefix: -uth_site_pval
- id: in_number_of_matrix
  doc: "number of matrix used for the discovery of\ntranscription factor binding sites.\
    \ Warning : Not\nconsidered if autoparam is on"
  type: long?
  inputBinding:
    prefix: -number_of_matrix
- id: in_lth_cre_r_size
  doc: "minimal size of the enriched region (in bp). Default:\nminimal size = 30bp"
  type: long?
  inputBinding:
    prefix: -lth_crer_size
- id: in_uth_cre_r_size
  doc: "maximal size of the enriched region (in bp). Default:\nmaximal site = 500bp"
  type: long?
  inputBinding:
    prefix: -uth_crer_size
- id: in_lth_cre_r_sites
  doc: "minimal number of sites covered by the enriched\nregion. Default: minimal\
    \ number of sites = 2"
  type: long?
  inputBinding:
    prefix: -lth_crer_sites
- id: in_uth_cre_r_sites
  doc: "maximal number of sites covered by the enriched\nregion."
  type: long?
  inputBinding:
    prefix: -uth_crer_sites
- id: in_lth_cre_r_sites_distance
  doc: "distance between successive sites to be considered. A\nminimal inter-site\
    \ distance can be used to prevent\noverlap between redundant matrices. Default\
    \ = minimal\ndistance = 1"
  type: long?
  inputBinding:
    prefix: -lth_crer_sites_distance
- id: in_uth_cre_r_sites_distance
  doc: "distance between successive sites to be considered. A\nmaximal inter-site\
    \ distance can be used to prevent\nmerging distinct modules into a single one.\
    \ Note: the\nmaximal inter-site distance is one of the most\ninfluential parameters\
    \ in cluster-buster. Default:\nmaximal distance = 35"
  type: long?
  inputBinding:
    prefix: -uth_crer_sites_distance
- id: in_uth_cre_r_pval
  doc: 'maximal binomial p-value. Default: 1e-4'
  type: double?
  inputBinding:
    prefix: -uth_crer_pval
- id: in_uth_cre_r_eval
  doc: 'maximal e-value. Default: 1e-4'
  type: double?
  inputBinding:
    prefix: -uth_crer_eval
- id: in_lth_cre_r_sig
  doc: 'minimal binomial significance. Default: 2'
  type: long?
  inputBinding:
    prefix: -lth_crer_sig
- id: in_uth_overlap
  doc: maximal overlap to define two distinct sites
  type: string?
  inputBinding:
    prefix: -uth_overlap
- id: in_no_pval
  doc: compute CRER without p value
  type: boolean?
  inputBinding:
    prefix: -nopval
- id: in_pre_table
  doc: "compute a table where is all possible p_value. Useful\nwhere there is a huge\
    \ number of sites to scan.\n"
  type: boolean?
  inputBinding:
    prefix: -pre_table
- id: in_cre_r_scan
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_ft
  doc: Output file in ft format
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_ft)
hints: []
cwlVersion: v1.1
baseCommand:
- rsat
- crer-scan
