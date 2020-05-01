#!/usr/bin/env cwl-runner

baseCommand:
- mapGL.py
class: CommandLineTool
cwlVersion: v1.0
id: mapgl.py
inputs:
- doc: Input regions to process. Should be in standard bed format. Only the first
    four bed fields will be used.
  id: input
  inputBinding:
    position: 0
  type: string
- doc: Tree, in standard Newick format, with or without branch lengths, describing
    relationships of query and target species to outgroups. May be given as a string
    or file.
  id: tree
  inputBinding:
    position: 1
  type: string
- doc: Name of the query species. Regions from this species will be mapped to target
    species coordinates.
  id: qname
  inputBinding:
    position: 2
  type: string
- doc: Name of the target species. Regions from the query species will be mapped to
    coordinates from this species.
  id: t_name
  inputBinding:
    position: 3
  type: string
- doc: 'Alignment files (.chain or .pkl): One for the target species and one per outgroup
    species. Files should be named according to the convention: qname.tname[...].chain.gz,
    where qname is the query species name and tname is the name of the target/outgroup
    species. Names used for qname and tname must match names used in the newick tree.'
  id: alignments
  inputBinding:
    position: 4
  type: string
- doc: 'Output file. Default stdout. (default: stdout)'
  id: output
  inputBinding:
    prefix: --output
  type: File
- doc: 'Mapping threshold i.e., |elem| * threshold <= |mapped_elem|. Default = 0.0
    -- equivalent to accepting a single-base overlap. On the other end of the spectrum,
    setting this value to 1 is equivalent to only accepting full-length overlaps.
    (default: 0.0)'
  id: threshold
  inputBinding:
    prefix: --threshold
  type: double
- doc: 'Ignore elements with an insertion/deletion of this or bigger size. Using the
    default value (-1) will allow gaps of any size. (default: -1)'
  id: gap
  inputBinding:
    prefix: --gap
  type: string
- doc: 'Verbosity level (default: info)'
  id: verbose
  inputBinding:
    prefix: --verbose
  type: string
- doc: 'If elements span multiple chains, report them as non- mapping. These will
    then be reported as gains or losses, according to the maximum-parsimony predictions.
    This is the default mapping behavior for bnMapper. By default, mapGL.pys will
    follow the mapping convention used by liftOver, whereas the longest mapped alignment
    is reported for split elements. (default: False)'
  id: drop_split
  inputBinding:
    prefix: --drop_split
  type: boolean
- doc: 'Input file format. (Default: BED) (default: BED)'
  id: in_format
  inputBinding:
    prefix: --in_format
  type: string
- doc: 'Attempt to predict gain/loss events on all branches of the tree, not just
    query/target branches. Output will include a comma-delimited list of gain/loss
    events from any/all affected branches. (default: False)'
  id: full_labels
  inputBinding:
    prefix: --full_labels
  type: boolean
