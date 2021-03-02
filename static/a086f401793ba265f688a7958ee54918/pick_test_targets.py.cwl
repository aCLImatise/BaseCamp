class: CommandLineTool
id: pick_test_targets.py.cwl
inputs:
- id: in_pm
  doc: "Number of mismatches to tolerate when determining\nwhether primer binds to\
    \ a region of target sequence"
  type: long?
  inputBinding:
    prefix: -pm
- id: in_gm
  doc: "Number of mismatches to tolerate when determining\nwhether guide binds to\
    \ a region of target sequence"
  type: long?
  inputBinding:
    prefix: -gm
- id: in_do_not_allow_gu_pairing
  doc: "When determining whether a guide binds to a region of\ntarget sequence, do\
    \ not count G-U (wobble) base pairs\nas matching."
  type: boolean?
  inputBinding:
    prefix: --do-not-allow-gu-pairing
- id: in_min_seq_len_to_consider
  doc: "Do not consider, when identifying representative\nsequences, target sequences\
    \ that are shorter than this\nlength. These can occur due to gaps in the alignment\n\
    (e.g., a target sequence can have length 0 if it is\nall '-' in the amplicon."
  type: long?
  inputBinding:
    prefix: --min-seq-len-to-consider
- id: in_min_target_len
  doc: "Minimum length of a target region; if the region in a\ndesign bound by primers\
    \ is less than this, sequence\nwill be added on both sides of the primer to reach\n\
    this length. Note that this is in the alignment; the\nactual sequence could be\
    \ shorter if there are gaps in\nthe alignment"
  type: long?
  inputBinding:
    prefix: --min-target-len
- id: in_min_frac_to_cover_with_rep_seqs
  doc: "For representative sequences, use medoids of clusters\nsuch that the clusters\
    \ account for at least this\nfraction of all sequences. This allows ignoring\n\
    outlier clusters (whose sequence(s) may have not been\ncovered by the design."
  type: long?
  inputBinding:
    prefix: --min-frac-to-cover-with-rep-seqs
- id: in_max_cluster_distance
  doc: "Maximum inter-cluster distance to merge clusters\n(measured as 1-ANI). Higher\
    \ values result in fewer\nrepresentative targets."
  type: long?
  inputBinding:
    prefix: --max-cluster-distance
- id: in_num_representative_targets
  doc: "Maximum number of clusters (equivalent to maximum\nnumber of representative\
    \ targets). If set, then --max-\ncluster-distance is ignored. Note that fewer\
    \ may be\nreported if --min-frac-to-cover-with-rep-seqs is <1.0;\nset it to 1.0\
    \ to report all."
  type: long?
  inputBinding:
    prefix: --num-representative-targets
- id: in_debug
  doc: Debug output
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_verbose
  doc: Verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_design_tsv
  doc: "Path to TSV with design options, as output by\ndesign.py. Alternatively, it\
    \ can be a custom-made TSV,\nwith one row per design option, containing the\n\
    following columns: 'target-start' (5' end of a\ntargeted genomic region, e.g.,\
    \ an amplicon); 'target-\nend' (3' end); 'guide-target-sequences' (space-\nseparated\
    \ list of guide sequences); 'left-primer-\ntarget-sequences' (space-separated\
    \ list of forward\nprimer sequences); 'right-primer-target-sequences'\n(space-separated\
    \ list of reverse primer sequences)"
  type: string
  inputBinding:
    position: 0
- id: in_alignment_fast_a
  doc: "Path to alignment (FASTA) from which to extract\ntargets. Target positions\
    \ in DESIGN_TSV must\ncorrespond to positions in this alignment. If\nDESIGN_TSV\
    \ is the output of design.py, then this can\nbe the output of `design.py --write-input-aln`."
  type: string
  inputBinding:
    position: 1
- id: in_out_tsv
  doc: Path to output TSV with recommended targets for
  type: string
  inputBinding:
    position: 2
- id: in_testing
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/adapt:1.2.0--py_0
cwlVersion: v1.1
baseCommand:
- pick_test_targets.py
