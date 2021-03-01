class: CommandLineTool
id: rsat_footprint_discovery.cwl
inputs:
- id: in_lth
  doc: 1 -lth occ_sig 0 -uth rank 50 \
  type: long?
  inputBinding:
    prefix: -lth
- id: in_return
  doc: ',proba,rank -filter  \'
  type: string?
  inputBinding:
    prefix: -return
- id: in_bg_model
  doc: \
  type: string?
  inputBinding:
    prefix: -bg_model
- id: in_bg_file
  doc: ', see below)'
  type: boolean?
  inputBinding:
    prefix: -bgfile
- id: in_unique_species
  doc: ', but at the level of the genus. At this level we'
  type: boolean?
  inputBinding:
    prefix: -unique_species
- id: in_mversionm
  doc: "\e[1mVERSION\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_sequences
  doc: Motif discovery
  type: string
  inputBinding:
    position: 0
- id: in_org_escherichiacoligcfasmv_taxon
  doc: -v 1 -org Escherichia_coli_GCF_000005845.2_ASM584v2 -taxon Enterobacteriaceae
    \
  type: string
  inputBinding:
    position: 0
- id: in_moutput_formatm
  doc: "\e[1mOUTPUT FORMAT\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_feature_map
  doc: "NOTE : 'ortho' is replaced by 'leaders' in the filename prefix with"
  type: string
  inputBinding:
    position: 0
- id: in_get_orthologs
  doc: dyad-analysis
  type: string
  inputBinding:
    position: 0
- id: in_footprint_scan
  doc: "\e[1mWISH LIST\e[0m"
  type: string
  inputBinding:
    position: 1
- id: in_soon_dot
  doc: "\e[1m-taxa\e[0m\nSpecify a file containing a list of taxa, each of which will\
    \ be\nanalyzed separately. The results are stored in a separate folder for\neach\
    \ taxon. The folder name is defined automatically."
  type: string
  inputBinding:
    position: 0
- id: in_entered_calling_argument
  doc: Multiple-fields can be entered either by calling this argument
  type: string
  inputBinding:
    position: 0
- id: in_fields_dot
  doc: "\e[1m-bg_model taxfreq|org_list|monads|file\e[0m"
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
- footprint-discovery
