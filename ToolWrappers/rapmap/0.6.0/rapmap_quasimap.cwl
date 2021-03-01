class: CommandLineTool
id: rapmap_quasimap.cwl
inputs:
- id: in_index
  doc: (required)  The location of the quasiindex
  type: File?
  inputBinding:
    prefix: --index
- id: in_left_mates
  doc: The location of the left paired-end reads
  type: File?
  inputBinding:
    prefix: --leftMates
- id: in_right_mates
  doc: The location of the right paired-end reads
  type: File?
  inputBinding:
    prefix: --rightMates
- id: in_un_mated_reads
  doc: The location of single-end reads
  type: File?
  inputBinding:
    prefix: --unmatedReads
- id: in_output
  doc: 'The output file (default: stdout)'
  type: File?
  inputBinding:
    prefix: --output
- id: in_compressed
  doc: Compress the output SAM file using zlib
  type: File?
  inputBinding:
    prefix: --compressed
- id: in_num_threads
  doc: Number of threads to use
  type: long?
  inputBinding:
    prefix: --numThreads
- id: in_sela_ln
  doc: Perform selective alignment to validate mapping hits
  type: boolean?
  inputBinding:
    prefix: --selAln
- id: in_mimic_bt_two
  doc: "[only with selAln]: mimic Bowtie2-like default params but with\n--no-mixed\
    \ and --no-discordant"
  type: boolean?
  inputBinding:
    prefix: --mimicBT2
- id: in_mimic_strict_bt_two
  doc: "[only with selAln]: mimic strict Bowtie2-like default params (e.g.\nlike those\
    \ recommended for running RSEM)"
  type: boolean?
  inputBinding:
    prefix: --mimicStrictBT2
- id: in_min_score_frac
  doc: "<ratio in (0,1]>\n[only with selAln]: minimum score fraction for a valid alignment"
  type: boolean?
  inputBinding:
    prefix: --minScoreFrac
- id: in_max_mmp_extension
  doc: "1>\n[only with selAln or with chaining]: maximum allowable MMP extension"
  type: long?
  inputBinding:
    prefix: --maxMMPExtension
- id: in_consensus_slack
  doc: "<ratio in (0,1]>\n[only with selAln]: consensus slack to apply during mapping"
  type: boolean?
  inputBinding:
    prefix: --consensusSlack
- id: in_ma
  doc: '[only with selAln]: match score'
  type: long?
  inputBinding:
    prefix: --ma
- id: in_mm
  doc: '[only with selAln]: mismatch penalty'
  type: long?
  inputBinding:
    prefix: --mm
- id: in_go
  doc: '[only with selAln]: gap open penalty'
  type: long?
  inputBinding:
    prefix: --go
- id: in_ge
  doc: '[only with selAln]: gap extend penalty'
  type: long?
  inputBinding:
    prefix: --ge
- id: in_dp_bandwidth
  doc: '[only with selAln]: bandwidth to use in extension alignment'
  type: long?
  inputBinding:
    prefix: --dpBandwidth
- id: in_no_orphans
  doc: discard orphaned mappings
  type: boolean?
  inputBinding:
    prefix: --noOrphans
- id: in_no_dovetail
  doc: discard dovetailing mappings
  type: boolean?
  inputBinding:
    prefix: --noDovetail
- id: in_recover_orphans
  doc: perform orphan recovery to try and recover endpoints of orphaned reads
  type: boolean?
  inputBinding:
    prefix: --recoverOrphans
- id: in_hard_filter
  doc: "[only with selAln]: apply hard filter to only return best alignments\nfor\
    \ each read"
  type: boolean?
  inputBinding:
    prefix: --hardFilter
- id: in_write_unmapped
  doc: include unmapped reads in the output SAM records
  type: boolean?
  inputBinding:
    prefix: --writeUnmapped
- id: in_quiet
  doc: Disable all console output apart from warnings and errors
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_chaining
  doc: Score the hits to find the best chain
  type: boolean?
  inputBinding:
    prefix: --chaining
- id: in_fuzzy_intersection
  doc: Find paired-end mapping locations using fuzzy intersection
  type: boolean?
  inputBinding:
    prefix: --fuzzyIntersection
- id: in_no_strict_check
  doc: "Don't perform extra checks to try and assure that only equally \"best\"\n\
    mappings for a read are reported"
  type: boolean?
  inputBinding:
    prefix: --noStrictCheck
- id: in_no_sensitive
  doc: Perform a less sensitive quasi-mapping by enabling NIP skipping
  type: boolean?
  inputBinding:
    prefix: --noSensitive
- id: in_double_fraction_covered
  doc: "<double in [0,1]>,  --quasiCoverage <double in [0,1]>\nRequire that this fraction\
    \ of a read is covered by MMPs before it is\nconsidered mappable."
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_max_num_hits
  doc: Reads mapping to more than this many loci are discarded
  type: long?
  inputBinding:
    prefix: --maxNumHits
- id: in_no_output
  doc: Don't write out any alignments (for speed testing purposes)
  type: boolean?
  inputBinding:
    prefix: --noOutput
- id: in_rap_map
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'The output file (default: stdout)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_compressed
  doc: Compress the output SAM file using zlib
  type: File?
  outputBinding:
    glob: $(inputs.in_compressed)
hints: []
cwlVersion: v1.1
baseCommand:
- rapmap
- quasimap
