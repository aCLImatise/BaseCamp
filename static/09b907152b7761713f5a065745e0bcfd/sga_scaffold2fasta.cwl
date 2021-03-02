class: CommandLineTool
id: sga_scaffold2fasta.cwl
inputs:
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_contig_file
  doc: read the contig sequences from FILE
  type: File?
  inputBinding:
    prefix: --contig-file
- id: in_as_qg_file
  doc: "read the contig string graph from FILE. This supercedes --contig-file\nthis\
    \ is usually the output from the sga-assemble step"
  type: File?
  inputBinding:
    prefix: --asqg-file
- id: in_no_singletons
  doc: do not output scaffolds that consist of a single contig
  type: boolean?
  inputBinding:
    prefix: --no-singletons
- id: in_outfile
  doc: 'write the scaffolds to FILE (default: scaffolds.fa)'
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_min_length
  doc: only output scaffolds longer than N bases
  type: long?
  inputBinding:
    prefix: --min-length
- id: in_write_unplaced
  doc: output unplaced contigs that are larger than minLength
  type: boolean?
  inputBinding:
    prefix: --write-unplaced
- id: in_write_names
  doc: write the name of contigs contained in the scaffold in the FASTA header
  type: boolean?
  inputBinding:
    prefix: --write-names
- id: in_min_gap_length
  doc: "separate contigs by at least N bases. All predicted gaps less\nthan N will\
    \ be extended to N (default: 25)"
  type: long?
  inputBinding:
    prefix: --min-gap-length
- id: in_use_overlap
  doc: "attempt to merge contigs using predicted overlaps.\nThis can help close gaps\
    \ in the scaffolds but comes\nwith a small risk of collapsing tandem repeats."
  type: boolean?
  inputBinding:
    prefix: --use-overlap
- id: in_graph_resolve
  doc: "if an ASQG file is present, attempt to resolve the links\nbetween contigs\
    \ using walks through the graph. The MODE parameter\nis a string describing the\
    \ algorithm to use.\nThe MODE parameter must be one of best-any|best-unique|unique|none.\n\
    best-any: The walk with length closest to the estimated\ndistance between the\
    \ contigs will be chosen to resolve the gap.\nIf multiple best walks are found,\
    \ the tie is broken arbitrarily.\nbest-unique: as above but if there is a tie\
    \ no walk will be chosen.\nunique: only resolve the gap if there is a single walk\
    \ between the contigs\nnone: do not resolve gaps using the graph\nThe most conservative\
    \ most is unique, then best-unique with best-any being the most\naggressive. The\
    \ default is unique"
  type: long?
  inputBinding:
    prefix: --graph-resolve
- id: in_distance_factor
  doc: "Accept a walk as correctly resolving a gap if the walk length is within T\
    \ standard\ndeviations from the estimated distance (default: 3.0f)"
  type: long?
  inputBinding:
    prefix: --distanceFactor
- id: in_scaffold_two_fast_a
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_as_qg_file
  doc: "read the contig string graph from FILE. This supercedes --contig-file\nthis\
    \ is usually the output from the sga-assemble step"
  type: File?
  outputBinding:
    glob: $(inputs.in_as_qg_file)
hints: []
cwlVersion: v1.1
baseCommand:
- sga
- scaffold2fasta
