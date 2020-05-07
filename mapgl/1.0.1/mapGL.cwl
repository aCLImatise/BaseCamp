class: CommandLineTool
id: mapGL.py.cwl
inputs:
- id: input
  doc: Input regions to process. Should be in standard bed format. Only the first
    four bed fields will be used.
  type: string
  inputBinding:
    position: 0
- id: tree
  doc: Tree, in standard Newick format, with or without branch lengths, describing
    relationships of query and target species to outgroups. May be given as a string
    or file.
  type: string
  inputBinding:
    position: 1
- id: qname
  doc: Name of the query species. Regions from this species will be mapped to target
    species coordinates.
  type: string
  inputBinding:
    position: 2
- id: t_name
  doc: Name of the target species. Regions from the query species will be mapped to
    coordinates from this species.
  type: string
  inputBinding:
    position: 3
- id: alignments
  doc: 'Alignment files (.chain or .pkl): One for the target species and one per outgroup
    species. Files should be named according to the convention: qname.tname[...].chain.gz,
    where qname is the query species name and tname is the name of the target/outgroup
    species. Names used for qname and tname must match names used in the newick tree.'
  type: string
  inputBinding:
    position: 4
- id: output
  doc: 'Output file. Default stdout. (default: stdout)'
  type: File
  inputBinding:
    prefix: --output
- id: threshold
  doc: 'Mapping threshold i.e., |elem| * threshold <= |mapped_elem|. Default = 0.0
    -- equivalent to accepting a single-base overlap. On the other end of the spectrum,
    setting this value to 1 is equivalent to only accepting full-length overlaps.
    (default: 0.0)'
  type: double
  inputBinding:
    prefix: --threshold
- id: gap
  doc: 'Ignore elements with an insertion/deletion of this or bigger size. Using the
    default value (-1) will allow gaps of any size. (default: -1)'
  type: string
  inputBinding:
    prefix: --gap
- id: verbose
  doc: 'Verbosity level (default: info)'
  type: string
  inputBinding:
    prefix: --verbose
- id: drop_split
  doc: 'If elements span multiple chains, report them as non- mapping. These will
    then be reported as gains or losses, according to the maximum-parsimony predictions.
    This is the default mapping behavior for bnMapper. By default, mapGL.pys will
    follow the mapping convention used by liftOver, whereas the longest mapped alignment
    is reported for split elements. (default: False)'
  type: boolean
  inputBinding:
    prefix: --drop_split
- id: in_format
  doc: 'Input file format. (Default: BED) (default: BED)'
  type: string
  inputBinding:
    prefix: --in_format
- id: full_labels
  doc: 'Attempt to predict gain/loss events on all branches of the tree, not just
    query/target branches. Output will include a comma-delimited list of gain/loss
    events from any/all affected branches. (default: False)'
  type: boolean
  inputBinding:
    prefix: --full_labels
outputs: []
cwlVersion: v1.1
baseCommand:
- mapGL.py
