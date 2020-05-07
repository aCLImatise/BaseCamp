class: CommandLineTool
id: guppy_classification.cwl
inputs:
- id: fat
  doc: makes trees with edges fattened in proportion to the number of reads
  type: string
  inputBinding:
    position: 0
- id: heat
  doc: maps an an arbitrary vector of the correct length to the tree
  type: string
  inputBinding:
    position: 1
- id: sing
  doc: makes one tree for each query sequence, showing uncertainty
  type: string
  inputBinding:
    position: 2
- id: tog
  doc: makes a tree with each of the reads represented as a pendant edge
  type: string
  inputBinding:
    position: 3
- id: classification
  doc: classify                outputs classification information in SQLite format
    to_rdp                  convert a reference package to a format RDP wants
  type: string
  inputBinding:
    position: 0
- id: utilities
  doc: adcl                    calculates ADCL for each pquery in a placefile check                   checks
    placefiles for common problems compress                compresses a placefile's
    pqueries demulti                 splits apart placements with multiplicity, undoing
    a round procedure distmat                 prints out a pairwise distance matrix
    between the edges filter                  filters one or more placefiles by placement
    name info                    writes the number of leaves of the reference tree
    and the number of pqueries islands                 finds the mass islands of one
    or more pqueries merge                   merges placefiles together mft                     Multi-Filter
    and Transform placefiles ograph                  finds the overlap graph of one
    or more pqueries placemat                prints out a pairwise distance matrix
    between placements rarefy                  performs rarefaction on collections
    of placements redup                   restores duplicates to deduped placefiles
    round                   clusters the placements by rounding branch lengths to_csv                  turns
    a placefile into a csv file to_json                 converts old-style .place
    files to .jplace placement files trim                    trims placefiles down
    to only containing an informative subset of the mass
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- guppy
- classification
