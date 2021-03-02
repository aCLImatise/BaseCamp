class: CommandLineTool
id: gem_2_gem.cwl
inputs:
- id: in_input
  doc: (default=stdin)
  type: File?
  inputBinding:
    prefix: --input
- id: in_sorted_merge
  doc: ', ...  (merge canonically labeled & sorted files)'
  type: File?
  inputBinding:
    prefix: --sorted-merge
- id: in_gapped_merging
  doc: (allow missing reads when sorted merging)
  type: boolean?
  inputBinding:
    prefix: --gapped-merging
- id: in_synchronous_merge
  doc: ", ...\n(merge files line by line)"
  type: File?
  inputBinding:
    prefix: --synchronous-merge
- id: in_lines_per_block
  doc: (default=50000)
  type: long?
  inputBinding:
    prefix: --lines-per-block
- id: in_threads
  doc: (default=1)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_output
  doc: (default=stdout)
  type: File?
  inputBinding:
    prefix: --output
- id: in_index
  doc: (GEM index, mandatory with -v,-r,-O)
  type: File?
  inputBinding:
    prefix: --index
- id: in_verify
  doc: (check alignment correctness)
  type: boolean?
  inputBinding:
    prefix: --verify
- id: in_realign
  doc: (annotate alignments with substitutions)
  type: boolean?
  inputBinding:
    prefix: --realign
- id: in_splice_orientation_from_consensus
  doc: ", ... ,<couple_s>\nwith <couple> := <donor_consensus>+<acceptor_consensus>\n\
    (annotate splices with their orientation\nusing a splice site consensus,\ndefault=GT+AG)"
  type: long?
  inputBinding:
    prefix: --splice-orientation-from-consensus
- id: in_score_uniqueness_strata
  doc: "(strata considered to determine uniqueness,\ndefault=2)"
  type: long?
  inputBinding:
    prefix: --score-uniqueness-strata
- id: in_score_quality_format
  doc: "'offset-33'|'offset-64'\n(mandatory before option -s if score)"
  type: boolean?
  inputBinding:
    prefix: --score-quality-format
- id: in_score_quality_levels
  doc: ",<medium_quality>,<hi_quality>\n(turning points to compute quality scores,\n\
    deafault=10,20,30)"
  type: long?
  inputBinding:
    prefix: --score-quality-levels
- id: in_label
  doc: (canonically label reads, save state)
  type: boolean?
  inputBinding:
    prefix: --label
- id: in_trim
  doc: ',<right_len> (trim reads&qualities, save state)'
  type: string?
  inputBinding:
    prefix: --trim
- id: in_accumulate
  doc: (accumulate alignments, save state)
  type: boolean?
  inputBinding:
    prefix: --accumulate
- id: in_score
  doc: "(give alignments the specified score,\n'-s help' shows syntax)"
  type: string?
  inputBinding:
    prefix: --score
- id: in_filter
  doc: ",<max_strata_distance>,<max_alignments>\n(prune alignments based on their\
    \ score)"
  type: string?
  inputBinding:
    prefix: --filter
- id: in_full_filter
  doc: "(prune alignments based on the filter,\n'-F help' shows syntax)"
  type: string?
  inputBinding:
    prefix: --full-filter
- id: in_strip
  doc: (erase last annotation from alignments)
  type: boolean?
  inputBinding:
    prefix: --strip
- id: in_barrier
  doc: (put a barrier to collect operations)
  type: boolean?
  inputBinding:
    prefix: --barrier
- id: in_collect
  doc: (collect saved states, merging changes)
  type: boolean?
  inputBinding:
    prefix: --collect
- id: in_show_license
  doc: (show license and exit)
  type: boolean?
  inputBinding:
    prefix: --show-license
- id: in_gem_two_gem
  doc: 'Options relevant to input (only one of -i, -m and -M can be specified):'
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gem2:20200110--0
cwlVersion: v1.1
baseCommand:
- gem-2-gem
