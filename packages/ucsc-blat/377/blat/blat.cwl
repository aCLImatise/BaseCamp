class: CommandLineTool
id: blat.cwl
inputs:
- id: in_ooc
  doc: "tells the program to load over-occurring 11-mers from\nan external file. \
    \ This will increase the speed\nby a factor of 40 in many cases, but is not required."
  type: long?
  inputBinding:
    prefix: -ooc
- id: in_database_type_type
  doc: "Database type.  Type is one of:\ndna - DNA sequence\nprot - protein sequence\n\
    dnax - DNA sequence translated in six frames to protein\nThe default is dna."
  type: string?
  inputBinding:
    prefix: -t
- id: in_query_type_type
  doc: "Query type.  Type is one of:\ndna - DNA sequence\nrna - RNA sequence\nprot\
    \ - protein sequence\ndnax - DNA sequence translated in six frames to protein\n\
    rnax - DNA sequence translated in three frames to protein\nThe default is dna."
  type: string?
  inputBinding:
    prefix: -q
- id: in_prot
  doc: Synonymous with -t=prot -q=prot.
  type: boolean?
  inputBinding:
    prefix: -prot
- id: in_tile_size
  doc: "Sets the size of match that triggers an alignment.\nUsually between 8 and\
    \ 12.\nDefault is 11 for DNA and 5 for protein."
  type: long?
  inputBinding:
    prefix: -tileSize
- id: in_step_size
  doc: Spacing between tiles. Default is tileSize.
  type: string?
  inputBinding:
    prefix: -stepSize
- id: in_one_off
  doc: "If set to 1, this allows one mismatch in tile and still\ntriggers an alignment.\
    \  Default is 0."
  type: long?
  inputBinding:
    prefix: -oneOff
- id: in_min_match
  doc: "Sets the number of tile matches.  Usually set from 2 to 4.\nDefault is 2 for\
    \ nucleotide, 1 for protein."
  type: long?
  inputBinding:
    prefix: -minMatch
- id: in_min_score
  doc: "Sets minimum score.  This is the matches minus the\nmismatches minus some\
    \ sort of gap penalty.  Default is 30."
  type: long?
  inputBinding:
    prefix: -minScore
- id: in_min_identity
  doc: "Sets minimum sequence identity (in percent).  Default is\n90 for nucleotide\
    \ searches, 25 for protein or translated\nprotein searches."
  type: long?
  inputBinding:
    prefix: -minIdentity
- id: in_max_gap
  doc: "Sets the size of maximum gap between tiles in a clump.  Usually\nset from\
    \ 0 to 3.  Default is 2. Only relevent for minMatch > 1."
  type: long?
  inputBinding:
    prefix: -maxGap
- id: in_no_head
  doc: Suppresses .psl header (so it's just a tab-separated file).
  type: boolean?
  inputBinding:
    prefix: -noHead
- id: in_make_ooc
  doc: Make overused tile file. Target needs to be complete genome.
  type: File?
  inputBinding:
    prefix: -makeOoc
- id: in_rep_match
  doc: "Sets the number of repetitions of a tile allowed before\nit is marked as overused.\
    \  Typically this is 256 for tileSize\n12, 1024 for tile size 11, 4096 for tile\
    \ size 10.\nDefault is 1024.  Typically comes into play only with makeOoc.\nAlso\
    \ affected by stepSize: when stepSize is halved, repMatch is\ndoubled to compensate."
  type: long?
  inputBinding:
    prefix: -repMatch
- id: in_mask
  doc: "Mask out repeats.  Alignments won't be started in masked region\nbut may extend\
    \ through it in nucleotide searches.  Masked areas\nare ignored entirely in protein\
    \ or translated searches. Types are:\nlower - mask out lower-cased sequence\n\
    upper - mask out upper-cased sequence\nout   - mask according to database.out\
    \ RepeatMasker .out file\nfile.out - mask database according to RepeatMasker file.out"
  type: File?
  inputBinding:
    prefix: -mask
- id: in_q_mask
  doc: "Mask out repeats in query sequence.  Similar to -mask above, but\nfor query\
    \ rather than target sequence."
  type: string?
  inputBinding:
    prefix: -qMask
- id: in_repeats
  doc: "Type is same as mask types above.  Repeat bases will not be\nmasked in any\
    \ way, but matches in repeat areas will be reported\nseparately from matches in\
    \ other areas in the psl output."
  type: string?
  inputBinding:
    prefix: -repeats
- id: in_min_rep_divergence
  doc: "Minimum percent divergence of repeats to allow\nthem to be unmasked.  Default\
    \ is 15.  Only relevant for\nmasking using RepeatMasker .out files."
  type: long?
  inputBinding:
    prefix: -minRepDivergence
- id: in_dots
  doc: Output dot every N sequences to show program's progress.
  type: string?
  inputBinding:
    prefix: -dots
- id: in_trim_t
  doc: Trim leading poly-T.
  type: boolean?
  inputBinding:
    prefix: -trimT
- id: in_not_rima
  doc: Don't trim trailing poly-A.
  type: boolean?
  inputBinding:
    prefix: -noTrimA
- id: in_trim_hard_a
  doc: "Remove poly-A tail from qSize as well as alignments in\npsl output."
  type: boolean?
  inputBinding:
    prefix: -trimHardA
- id: in_fast_map
  doc: "Run for fast DNA/DNA remapping - not allowing introns,\nrequiring high %ID.\
    \ Query sizes must not exceed 5000."
  type: boolean?
  inputBinding:
    prefix: -fastMap
- id: in_out
  doc: "Controls output file format.  Type is one of:\npsl - Default.  Tab-separated\
    \ format, no sequence\npslx - Tab-separated format with sequence\naxt - blastz-associated\
    \ axt format\nmaf - multiz-associated maf format\nsim4 - similar to sim4 format\n\
    wublast - similar to wublast format\nblast - similar to NCBI blast format\nblast8-\
    \ NCBI blast tabular format\nblast9 - NCBI blast tabular format with comments"
  type: File?
  inputBinding:
    prefix: -out
- id: in_fine
  doc: "For high-quality mRNAs, look harder for small initial and\nterminal exons.\
    \  Not recommended for ESTs."
  type: boolean?
  inputBinding:
    prefix: -fine
- id: in_max_intron
  doc: Sets maximum intron size. Default is 750000.
  type: long?
  inputBinding:
    prefix: -maxIntron
- id: in_extend_through_n
  doc: Allows extension of alignment through large blocks of Ns.
  type: boolean?
  inputBinding:
    prefix: -extendThroughN
- id: in_database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_query
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_mask
  doc: "Mask out repeats.  Alignments won't be started in masked region\nbut may extend\
    \ through it in nucleotide searches.  Masked areas\nare ignored entirely in protein\
    \ or translated searches. Types are:\nlower - mask out lower-cased sequence\n\
    upper - mask out upper-cased sequence\nout   - mask according to database.out\
    \ RepeatMasker .out file\nfile.out - mask database according to RepeatMasker file.out"
  type: File?
  outputBinding:
    glob: $(inputs.in_mask)
- id: out_out
  doc: "Controls output file format.  Type is one of:\npsl - Default.  Tab-separated\
    \ format, no sequence\npslx - Tab-separated format with sequence\naxt - blastz-associated\
    \ axt format\nmaf - multiz-associated maf format\nsim4 - similar to sim4 format\n\
    wublast - similar to wublast format\nblast - similar to NCBI blast format\nblast8-\
    \ NCBI blast tabular format\nblast9 - NCBI blast tabular format with comments"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- blat
