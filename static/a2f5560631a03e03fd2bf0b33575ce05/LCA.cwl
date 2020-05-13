class: CommandLineTool
id: LCA.cwl
inputs:
- id: i
  doc: assignments of sequences to ref database in blast .m8 tab delimited format
  type: string
  inputBinding:
    prefix: -i
- id: r
  doc: file with entries corresponding to sequences in ref database, that was mapped
    against
  type: string
  inputBinding:
    prefix: -r
- id: o
  doc: file containing the sequence name and the assigned taxonomy against the ref
    database
  type: string
  inputBinding:
    prefix: -o
- id: mat_high
  doc: calculate abundance of reads at different taxonomic levels. An extra file (derriving
    from -o) per tax level is written
  type: boolean
  inputBinding:
    prefix: -matHigh
- id: show_hit_read
  doc: if a hit can be uniquely assigned to a single entry in the ref database, this
    is reported in the -o file.
  type: boolean
  inputBinding:
    prefix: -showHitRead
- id: no_bl_filter
  doc: use only, if custom scripts were used to pre-filter filter -i file and in-built
    filter should be deactivated
  type: boolean
  inputBinding:
    prefix: -no_bl_filter
- id: read_input
  doc: '[miTag / OTU] changes the tags attached to single reads'
  type: boolean
  inputBinding:
    prefix: -readInput
- id: lca_frac
  doc: '[0-1] the fraction of matching taxonomies required to accept this taxonomy
    on the different levels. Default="0.8"'
  type: boolean
  inputBinding:
    prefix: -LCAfrac
- id: id
  doc: comma seperated list of min %identity, to accept a database hit as applicable
    to this taxonomic level, starting from Species and going to Kingdom. Default="97,95,93,91,88,78,0"
  type: boolean
  inputBinding:
    prefix: -id
outputs: []
cwlVersion: v1.1
baseCommand:
- LCA
