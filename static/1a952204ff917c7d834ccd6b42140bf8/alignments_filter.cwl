class: CommandLineTool
id: alignments_filter.cwl
inputs:
- id: m
  doc: '[ --min-score ] arg (=0)           set min-score filter value'
  type: boolean
  inputBinding:
    prefix: -m
- id: p
  doc: '[ --min-pid ] arg (=0)             set minimal PID to consider'
  type: boolean
  inputBinding:
    prefix: -p
- id: t
  doc: '[ --top-percent ] arg (=1)         set top-percent filter value'
  type: boolean
  inputBinding:
    prefix: -t
- id: e
  doc: '[ --max-evalue ] arg (=-1)         set maximum evalue for filtering'
  type: boolean
  inputBinding:
    prefix: -e
- id: b
  doc: '[ --best-alignments ] arg (=0)     set number of top score alignments to  consider
    (after toppercent filter)'
  type: boolean
  inputBinding:
    prefix: -b
- id: s
  doc: '[ --sort-score ]                   sort alignments by decreasing score'
  type: boolean
  inputBinding:
    prefix: -s
- id: k
  doc: '[ --keep-best-per-ref ]            for each combination of query and  reference
    sequence id all but the best  scoring alignment are removed'
  type: boolean
  inputBinding:
    prefix: -k
- id: c
  doc: '[ --min-support ] arg (=1)         set minimum number of hits an alignment
    needs to have (after filtering)'
  type: boolean
  inputBinding:
    prefix: -c
- id: r
  doc: '[ --remove-ref-from-query-taxon ]  remove alignments for labeled data to  test
    different degrees of taxonomic  distance'
  type: boolean
  inputBinding:
    prefix: -r
- id: x
  doc: '[ --taxon-mapping-sample ] arg     map sample identifier to taxon'
  type: boolean
  inputBinding:
    prefix: -x
- id: y
  doc: '[ --taxon-mapping-reference ] arg  map reference identifier to taxon'
  type: boolean
  inputBinding:
    prefix: -y
- id: z
  doc: '[ --mask-by-star ]                 instead of suppressing filtered  alignments
    mask them by prefixing a  star at the line start'
  type: boolean
  inputBinding:
    prefix: -z
outputs: []
cwlVersion: v1.1
baseCommand:
- alignments-filter
