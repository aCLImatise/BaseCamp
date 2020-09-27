class: CommandLineTool
id: alignments_filter.cwl
inputs:
- id: in_arg_set_filter_value
  doc: '[ --min-score ] arg (=0)           set min-score filter value'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_arg_set_pid
  doc: '[ --min-pid ] arg (=0)             set minimal PID to consider'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_arg_set_toppercent_value
  doc: '[ --top-percent ] arg (=1)         set top-percent filter value'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_arg_set_evalue
  doc: '[ --max-evalue ] arg (=-1)         set maximum evalue for filtering'
  type: boolean
  inputBinding:
    prefix: -e
- id: in_arg_set_number_top
  doc: "[ --best-alignments ] arg (=0)     set number of top score alignments to\n\
    consider (after toppercent filter)"
  type: boolean
  inputBinding:
    prefix: -b
- id: in_sort_alignments_decreasing
  doc: '[ --sort-score ]                   sort alignments by decreasing score'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_combination_query_andreference
  doc: "[ --keep-best-per-ref ]            for each combination of query and\nreference\
    \ sequence id all but the best\nscoring alignment are removed"
  type: boolean
  inputBinding:
    prefix: -k
- id: in_arg_set_minimum_number
  doc: "[ --min-support ] arg (=1)         set minimum number of hits an alignment\n\
    needs to have (after filtering)"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_remove_alignments_labeled
  doc: "[ --remove-ref-from-query-taxon ]  remove alignments for labeled data to\n\
    test different degrees of taxonomic\ndistance"
  type: boolean
  inputBinding:
    prefix: -r
- id: in_arg_map_identifier
  doc: '[ --taxon-mapping-sample ] arg     map sample identifier to taxon'
  type: boolean
  inputBinding:
    prefix: -x
- id: in_arg_map_reference
  doc: '[ --taxon-mapping-reference ] arg  map reference identifier to taxon'
  type: boolean
  inputBinding:
    prefix: -y
- id: in_instead_suppressing_filteredalignments
  doc: "[ --mask-by-star ]                 instead of suppressing filtered\nalignments\
    \ mask them by prefixing a\nstar at the line start\n"
  type: boolean
  inputBinding:
    prefix: -z
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- alignments-filter
