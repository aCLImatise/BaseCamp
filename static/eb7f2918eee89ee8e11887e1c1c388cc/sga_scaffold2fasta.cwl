class: CommandLineTool
id: sga_scaffold2fasta.cwl
inputs:
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: contig_file
  doc: read the contig sequences from FILE
  type: File
  inputBinding:
    prefix: --contig-file
- id: as_qg_file
  doc: read the contig string graph from FILE. This supercedes --contig-file this
    is usually the output from the sga-assemble step
  type: File
  inputBinding:
    prefix: --asqg-file
- id: no_singletons
  doc: do not output scaffolds that consist of a single contig
  type: boolean
  inputBinding:
    prefix: --no-singletons
- id: outfile
  doc: 'write the scaffolds to FILE (default: scaffolds.fa)'
  type: File
  inputBinding:
    prefix: --outfile
- id: min_length
  doc: only output scaffolds longer than N bases
  type: string
  inputBinding:
    prefix: --min-length
- id: write_unplaced
  doc: output unplaced contigs that are larger than minLength
  type: boolean
  inputBinding:
    prefix: --write-unplaced
- id: write_names
  doc: write the name of contigs contained in the scaffold in the FASTA header
  type: boolean
  inputBinding:
    prefix: --write-names
- id: min_gap_length
  doc: 'separate contigs by at least N bases. All predicted gaps less than N will
    be extended to N (default: 25)'
  type: string
  inputBinding:
    prefix: --min-gap-length
- id: use_overlap
  doc: attempt to merge contigs using predicted overlaps. This can help close gaps
    in the scaffolds but comes with a small risk of collapsing tandem repeats.
  type: boolean
  inputBinding:
    prefix: --use-overlap
- id: graph_resolve
  doc: 'if an ASQG file is present, attempt to resolve the links between contigs using
    walks through the graph. The MODE parameter is a string describing the algorithm
    to use. The MODE parameter must be one of best-any|best-unique|unique|none. best-any:
    The walk with length closest to the estimated distance between the contigs will
    be chosen to resolve the gap. If multiple best walks are found, the tie is broken
    arbitrarily. best-unique: as above but if there is a tie no walk will be chosen.
    unique: only resolve the gap if there is a single walk between the contigs none:
    do not resolve gaps using the graph The most conservative most is unique, then
    best-unique with best-any being the most aggressive. The default is unique'
  type: string
  inputBinding:
    prefix: --graph-resolve
- id: distance_factor
  doc: 'Accept a walk as correctly resolving a gap if the walk length is within T
    standard  deviations from the estimated distance (default: 3.0f)'
  type: string
  inputBinding:
    prefix: --distanceFactor
outputs: []
cwlVersion: v1.1
baseCommand:
- sga
- scaffold2fasta
