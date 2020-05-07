class: CommandLineTool
id: tn93_cluster.cwl
inputs:
- id: o
  doc: direct the output file with clusters to OUTPUT either  JSON or sets of FASTA
    files representing individual clusters (default=stdout) see also -f
  type: string
  inputBinding:
    prefix: -o
- id: t
  doc: sequences which lie within this distance will be clustered (>=0, default=0.015)
  type: string
  inputBinding:
    prefix: -t
- id: a
  doc: "handle ambigous nucleotides using one of the following strategies (default=resolve)\
    \ resolve: resolve ambiguities to minimize distance (e.g.R matches A); average:\
    \ average ambiguities (e.g.R-A is 0.5 A-A and 0.5 G-A); skip:    do not include\
    \ sites with ambiguous nucleotides in distance calculations; gapmm:   a gap ('-')\
    \ matched to anything other than another gap is like matching an N (4-fold ambig)\
    \ to it; a string (e.g. RY): any ambiguity in the list is RESOLVED; any ambiguitiy\
    \ NOT in the list is averaged  (LIST-NOT LIST will also be averaged);"
  type: string
  inputBinding:
    prefix: -a
- id: c
  doc: 'create clusters based on the following rules (default=all) all:     each sequence
    in the cluster is within the specified distance threshold  of EVERY other sequence;
    this cluster definition is stable from run to run any:     each sequence in the
    cluster is within the specified distance threshold  of AT LEAST ONE other sequence;
    this cluster definition need NOT be stable  from run to run'
  type: string
  inputBinding:
    prefix: -c
- id: m
  doc: "output clusters in the following format (default=json) json:    write a JSON\
    \ file with individual clusters represented by the 'centroid'  i.e. the longest\
    \ sequence, and the list of all other sequence members files:   if OUTPUT is set\
    \ then write each cluster to as a FASTA file OUTPUT.x where x is the cluster ID;\
    \ if OUTPUT is stdout, then write each cluster as a FASTA file separated by a\
    \ line of ======"
  type: string
  inputBinding:
    prefix: -m
- id: l
  doc: only process pairs of sequences that overlap over at least OVERLAP nucleotides  (an
    integer >0, default=100)
  type: string
  inputBinding:
    prefix: -l
- id: g
  doc: in combination with AMBIGS, works to limit (for resolve and string options
    to AMBIG) the maximum tolerated FRACTION of ambiguous characters; sequences whose
    pairwise comparisons include no more than FRACTION [0,1] of sites with resolvable
    ambiguities will be resolved while all others will be AVERAGED (default = 1.0)
  type: string
  inputBinding:
    prefix: -g
- id: q
  doc: do not print progress updates to stderr (default is to print)
  type: string
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- tn93-cluster
