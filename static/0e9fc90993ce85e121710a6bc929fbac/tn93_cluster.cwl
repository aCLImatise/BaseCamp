class: CommandLineTool
id: ../../../tn93_cluster.cwl
inputs:
- id: in_direct_output_file
  doc: "direct the output file with clusters to OUTPUT either\nJSON or sets of FASTA\
    \ files representing individual clusters\n(default=stdout) see also -f"
  type: File
  inputBinding:
    prefix: -o
- id: in_sequences_lie_distance
  doc: sequences which lie within this distance will be clustered (>=0, default=0.015)
  type: double
  inputBinding:
    prefix: -t
- id: in_handle_ambigous_nucleotides
  doc: "handle ambigous nucleotides using one of the following strategies (default=resolve)\n\
    resolve: resolve ambiguities to minimize distance (e.g.R matches A);\naverage:\
    \ average ambiguities (e.g.R-A is 0.5 A-A and 0.5 G-A);\nskip:    do not include\
    \ sites with ambiguous nucleotides in distance calculations;\ngapmm:   a gap ('-')\
    \ matched to anything other than another gap is like matching an N (4-fold ambig)\
    \ to it;\na string (e.g. RY): any ambiguity in the list is RESOLVED; any ambiguitiy\
    \ NOT in the list is averaged\n(LIST-NOT LIST will also be averaged);"
  type: string
  inputBinding:
    prefix: -a
- id: in_create_clusters_based
  doc: "create clusters based on the following rules (default=all)\nall:     each\
    \ sequence in the cluster is within the specified distance threshold\nof EVERY\
    \ other sequence; this cluster definition is stable from run to run\nany:    \
    \ each sequence in the cluster is within the specified distance threshold\nof\
    \ AT LEAST ONE other sequence; this cluster definition need NOT be stable\nfrom\
    \ run to run"
  type: string
  inputBinding:
    prefix: -c
- id: in_output_clusters_following
  doc: "output clusters in the following format (default=json)\njson:    write a JSON\
    \ file with individual clusters represented by the 'centroid'\ni.e. the longest\
    \ sequence, and the list of all other sequence members\nfiles:   if OUTPUT is\
    \ set then write each cluster to as a FASTA file OUTPUT.x where\nx is the cluster\
    \ ID; if OUTPUT is stdout, then write each cluster as a FASTA\nfile separated\
    \ by a line of ======"
  type: File
  inputBinding:
    prefix: -m
- id: in_only_process_pairs
  doc: "only process pairs of sequences that overlap over at least OVERLAP nucleotides\n\
    (an integer >0, default=100)"
  type: long
  inputBinding:
    prefix: -l
- id: in_combination_ambigs_limit
  doc: "in combination with AMBIGS, works to limit (for resolve and string options\
    \ to AMBIG)\nthe maximum tolerated FRACTION of ambiguous characters; sequences\
    \ whose pairwise comparisons\ninclude no more than FRACTION [0,1] of sites with\
    \ resolvable ambiguities will be resolved\nwhile all others will be AVERAGED (default\
    \ = 1.0)"
  type: string
  inputBinding:
    prefix: -g
- id: in_print_progress_updates
  doc: do not print progress updates to stderr (default is to print)
  type: string
  inputBinding:
    prefix: -q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_direct_output_file
  doc: "direct the output file with clusters to OUTPUT either\nJSON or sets of FASTA\
    \ files representing individual clusters\n(default=stdout) see also -f"
  type: File
  outputBinding:
    glob: $(inputs.in_direct_output_file)
- id: out_output_clusters_following
  doc: "output clusters in the following format (default=json)\njson:    write a JSON\
    \ file with individual clusters represented by the 'centroid'\ni.e. the longest\
    \ sequence, and the list of all other sequence members\nfiles:   if OUTPUT is\
    \ set then write each cluster to as a FASTA file OUTPUT.x where\nx is the cluster\
    \ ID; if OUTPUT is stdout, then write each cluster as a FASTA\nfile separated\
    \ by a line of ======"
  type: File
  outputBinding:
    glob: $(inputs.in_output_clusters_following)
cwlVersion: v1.1
baseCommand:
- tn93-cluster
