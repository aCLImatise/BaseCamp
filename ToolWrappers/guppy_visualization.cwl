class: CommandLineTool
id: guppy_visualization.cwl
inputs:
- id: in_visualization
  doc: fat                     makes trees with edges fattened in proportion to the
    number of reads
  type: string
  inputBinding:
    position: 0
- id: in_heat
  doc: maps an an arbitrary vector of the correct length to the tree
  type: string
  inputBinding:
    position: 1
- id: in_sing
  doc: makes one tree for each query sequence, showing uncertainty
  type: string
  inputBinding:
    position: 2
- id: in_tog
  doc: makes a tree with each of the reads represented as a pendant edge
  type: string
  inputBinding:
    position: 3
- id: in_bary
  doc: draws the barycenter of a placement collection on the reference tree
  type: string
  inputBinding:
    position: 0
- id: in_ed_pl
  doc: calculates the EDPL uncertainty values for a collection of pqueries
  type: string
  inputBinding:
    position: 1
- id: in_error
  doc: finds the error between two placefiles
  type: string
  inputBinding:
    position: 2
- id: in_fpd
  doc: calculates various alpha diversity metrics of placefiles
  type: string
  inputBinding:
    position: 3
- id: in_kr
  doc: calculates the Kantorovich-Rubinstein distance and corresponding p-values
  type: string
  inputBinding:
    position: 4
- id: in_kr_heat
  doc: makes a heat tree
  type: string
  inputBinding:
    position: 5
- id: in_pc_a
  doc: performs edge principal components
  type: string
  inputBinding:
    position: 6
- id: in_rare_fact
  doc: calculates phylogenetic rarefaction curves
  type: string
  inputBinding:
    position: 7
- id: in_split_if_y
  doc: writes out differences of masses for the splits of the tree
  type: string
  inputBinding:
    position: 8
- id: in_squash
  doc: performs squash clustering
  type: string
  inputBinding:
    position: 9
- id: in_uni_frac
  doc: calculates unifrac on two or more placefiles
  type: string
  inputBinding:
    position: 10
- id: in_classification
  doc: classify                outputs classification information in a tabular or
    SQLite format
  type: string
  inputBinding:
    position: 11
- id: in_classify_rdp
  doc: converts RDP output to something resembling guppy classify output
  type: string
  inputBinding:
    position: 12
- id: in_to_rdp
  doc: convert a reference package to a format RDP wants
  type: string
  inputBinding:
    position: 13
- id: in_utilities
  doc: adcl                    calculates ADCL for each pquery in a placefile
  type: string
  inputBinding:
    position: 14
- id: in_check
  doc: checks placefiles for common problems
  type: string
  inputBinding:
    position: 15
- id: in_compress
  doc: compresses a placefile's pqueries
  type: string
  inputBinding:
    position: 16
- id: in_de_multi
  doc: splits apart placements with multiplicity, undoing a round procedure
  type: string
  inputBinding:
    position: 17
- id: in_dist_mat
  doc: prints out a pairwise distance matrix between the edges
  type: string
  inputBinding:
    position: 18
- id: in_filter
  doc: filters one or more placefiles by placement name
  type: string
  inputBinding:
    position: 19
- id: in_info
  doc: writes the number of leaves of the reference tree and the number of pqueries
  type: string
  inputBinding:
    position: 20
- id: in_islands
  doc: finds the mass islands of one or more pqueries
  type: string
  inputBinding:
    position: 21
- id: in_merge
  doc: merges placefiles together
  type: string
  inputBinding:
    position: 22
- id: in_mft
  doc: Multi-Filter and Transform placefiles
  type: string
  inputBinding:
    position: 23
- id: in_o_graph
  doc: finds the mass islands of one or more pqueries
  type: string
  inputBinding:
    position: 24
- id: in_rare_fy
  doc: performs rarefaction on collections of placements
  type: string
  inputBinding:
    position: 25
- id: in_red_up
  doc: restores duplicates to deduped placefiles
  type: string
  inputBinding:
    position: 26
- id: in_round
  doc: clusters the placements by rounding branch lengths
  type: string
  inputBinding:
    position: 27
- id: in_to_csv
  doc: turns a placefile into a csv file
  type: string
  inputBinding:
    position: 28
- id: in_to_json
  doc: converts old-style .place files to .jplace placement files
  type: string
  inputBinding:
    position: 29
- id: in_trim
  doc: trims placefiles down to only containing an informative subset of the mass
  type: string
  inputBinding:
    position: 30
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- guppy
- visualization
