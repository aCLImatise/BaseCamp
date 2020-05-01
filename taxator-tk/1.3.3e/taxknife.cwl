#!/usr/bin/env cwl-runner

baseCommand:
- taxknife
class: CommandLineTool
cwlVersion: v1.0
id: taxknife
inputs:
- doc: '[ --mode ] arg (=annotate)       choose mode: "traverse": follow nodes upwards
    in  taxonomy "annotate": looks up metainformation  attached to nodes (e.g. names)
    "tree": writes a (sub)tree'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '[ --field ] arg (=1)             input column'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: '[ --keep-not-rank ]            unmappable taxids remain (otherwise mapped  to
    root)'
  id: k
  inputBinding:
    prefix: -k
  type: boolean
- doc: '[ --keep-not-taxid ]           unknown taxonomic IDs are kept (otherwise  skipped)'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: '[ --set-invalid-traverse ] arg replace unknown taxids by this given value'
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: '[ --traverse-ranks ] arg       traverse taxonomy up to one of these ranks  (space
    separated list)'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: '[ --allnodes ]                 if set, all nodes will be used, not only at
    selected ranks'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: '[ --set-invalid-annotate ] arg replace all taxids that are invalid by this
    given value'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: "[ --show ] arg (=name)         either 'name', 'rank', 'path' or  'taxid-path'"
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: '[ --name-ranks ] arg           select ranks to be considered; if not set,  default
    ranks will be used'
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: '[ --tree-ranks ] arg             consider these taxonomic ranks (ordered  space
    separated list from low to high,  e.g. species family phylum)'
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: '[ --outfile ] arg (=tree.newick) name of newick file to be written'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '[ --fill-intermediate ]          fill in dummy intermediate nodes if ranks
    are missing'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: '[ --names ]                      show scientific names in tree (no  character
    restrictions)'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
