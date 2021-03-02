class: CommandLineTool
id: real.cwl
inputs:
- id: in_maximum_number_errors
  doc: <maximum number of errors in seed, default=2>
  type: File?
  inputBinding:
    prefix: -t
- id: in_total_maximum_number
  doc: <total maximum number of errors, default=5>
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_length_seed_default
  doc: <length of seed, default=32>
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_search_unique_match
  doc: <search for unique match, default=1>
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_fraction_use_default
  doc: <fraction of physical memory to use, default=0.75>
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_use_quality_scores
  doc: <use quality scores, default=1>
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_offset_quality_scores
  doc: <offset for quality scores, default=autodetect>
  type: boolean?
  inputBinding:
    prefix: -Q
- id: in_rewrite_pattern_default
  doc: <rewrite pattern file, default=1>
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_number_matching_threads
  doc: <number of matching threads, default=8>
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_similarity
  doc: <sequence similarity, default=0.995>
  type: boolean?
  inputBinding:
    prefix: -similarity
- id: in_trans
  doc: <transitions fraction of mutations, default=0.71>
  type: boolean?
  inputBinding:
    prefix: -trans
- id: in_gc
  doc: <composition bias, default=0.41>
  type: boolean?
  inputBinding:
    prefix: -gc
- id: in_gcm_ut_bias
  doc: <mutability bias of G&C, default=2>
  type: boolean?
  inputBinding:
    prefix: -gcmut_bias
- id: in_filter_level
  doc: <filtering level for equal hits 0-4, default=2>
  type: boolean?
  inputBinding:
    prefix: -filter_level
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- real
