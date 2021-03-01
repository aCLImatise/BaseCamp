class: CommandLineTool
id: guess_baits.py.cwl
inputs:
- id: in_output
  doc: The inferred targets, in BED format.
  type: File?
  inputBinding:
    prefix: --output
- id: in_coverage
  doc: "Filename to output average coverage depths in .cnn\nformat."
  type: File?
  inputBinding:
    prefix: --coverage
- id: in_number_subprocesses_segment
  doc: "[CPU], --processes [CPU]\nNumber of subprocesses to segment in parallel. If\n\
    given without an argument, use the maximum number of\navailable CPUs. [Default:\
    \ use 1 process]"
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_targets
  doc: "Potentially targeted genomic regions, e.g. all known\nexons in the reference\
    \ genome, in BED format. Each of\nthese regions will be tested as a whole for\n\
    enrichment. (Faster method)"
  type: string?
  inputBinding:
    prefix: --targets
- id: in_access
  doc: "Sequencing-accessible genomic regions (e.g. from\n'cnvkit.py access'), or\
    \ known genic regions in the\nreference genome, in BED format. All bases will\
    \ be\ntested for enrichment. (Slower method)"
  type: string?
  inputBinding:
    prefix: --access
- id: in_min_depth
  doc: "Minimum sequencing read depth to accept as captured.\n[Default: 5]"
  type: long?
  inputBinding:
    prefix: --min-depth
- id: in_min_gap
  doc: "Merge regions separated by gaps smaller than this.\n[Default: 25]"
  type: long?
  inputBinding:
    prefix: --min-gap
- id: in_min_length
  doc: "Minimum region length to accept as captured. [Default:\n50]\n"
  type: long?
  inputBinding:
    prefix: --min-length
- id: in_sample_bams
  doc: Sample BAM file(s) to test for target coverage.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_coverage
  doc: "Filename to output average coverage depths in .cnn\nformat."
  type: File?
  outputBinding:
    glob: $(inputs.in_coverage)
hints: []
cwlVersion: v1.1
baseCommand:
- guess_baits.py
