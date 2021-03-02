class: CommandLineTool
id: rsat_footprint_scan.cwl
inputs:
- id: in_tax_on
  doc: \
  type: string?
  inputBinding:
    prefix: -taxon
- id: in_bg_file
  doc: ${RSAT}/public_html/data/taxon_frequencies/Enterobacteriaceae/dyads_3nt_sp0-20_upstream-noorf_Enterobacteriaceae-noov-1str.freq.gz
    \
  type: boolean?
  inputBinding:
    prefix: -bgfile
- id: in_m
  doc: \
  type: string?
  inputBinding:
    prefix: -m
- id: in_matrix_format
  doc: \
  type: string?
  inputBinding:
    prefix: -matrix_format
- id: in_matrix_suffix
  doc: \
  type: string?
  inputBinding:
    prefix: -matrix_suffix
- id: in_all_genes
  doc: \
  type: string?
  inputBinding:
    prefix: -all_genes
- id: in_occ_sig_opt
  doc: "'-lth score 7'"
  type: boolean?
  inputBinding:
    prefix: -occ_sig_opt
- id: in_unique_species
  doc: ', but at the level of the genus. At this level we'
  type: boolean?
  inputBinding:
    prefix: -unique_species
- id: in_footprint_scan
  doc: "\e[1mDESCRIPTION\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_eckeckagar
  doc: ECK12_ECK120012515_AgaR.24
  type: string
  inputBinding:
    position: 0
- id: in_eckeckarac
  doc: ECK12_ECK120012316_AraC.18
  type: string
  inputBinding:
    position: 0
- id: in_result_dot
  doc: The tutorial could cover the 3 interfaces (command-line, Web services
  type: string
  inputBinding:
    position: 0
- id: in_details_dot
  doc: "\e[1m-bgfile background_file\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_distributed_dot
  doc: The background model is calculated locally at each step of the scan,
  type: string
  inputBinding:
    position: 0
- id: in_xy_graph
  doc: "\e[1m-scan_opt\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_used_dot
  doc: "\e[1m-batch_matrix \e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_organisms_dot
  doc: The file format is one organisms per line, the comment char is ";"
  type: string
  inputBinding:
    position: 0
- id: in_program_dot
  doc: "File format: Tab delimited file with three columns.\nID of the query gene\
    \ (in the query organism)\nID of the reference gene\nID of the reference organism"
  type: string
  inputBinding:
    position: 0
- id: in_incomplete_dot
  doc: "\e[1m-sep_genes\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_distance_dot
  doc: "\e[1m-dist_thr value\e[0m"
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
- rsat
- footprint-scan
