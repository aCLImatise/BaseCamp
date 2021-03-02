class: CommandLineTool
id: gem_2_bed_segments.cwl
inputs:
- id: in_input
  doc: (default=stdin)
  type: File?
  inputBinding:
    prefix: --input
- id: in_strata_after_best
  doc: (default=0)
  type: long?
  inputBinding:
    prefix: --strata-after-best
- id: in_errors_after_best
  doc: (default=0)
  type: long?
  inputBinding:
    prefix: --errors-after-best
- id: in_output
  doc: (default=stdout)
  type: File?
  inputBinding:
    prefix: --output
- id: in_orientation_from_splices
  doc: '(default: disabled)'
  type: boolean?
  inputBinding:
    prefix: --orientation-from-splices
- id: in_compact
  doc: "(emit only the first six BED fields,\ndefault=false)"
  type: boolean?
  inputBinding:
    prefix: --compact
- id: in_rgb_forward_scheme
  doc: ",<8-bit_int>,<8-bit_int>\n(RGB scheme for forward blocks,\ndefault=0,0,255)"
  type: long?
  inputBinding:
    prefix: --rgb-forward-scheme
- id: in_rgb_reverse_scheme
  doc: ",<8-bit_int>,<8-bit_int>\n(RGB scheme for reverse blocks,\ndefault=255,0,0)"
  type: long?
  inputBinding:
    prefix: --rgb-reverse-scheme
- id: in_rgb_unknown_scheme
  doc: ",<8-bit_int>,<8-bit_int>\n(RGB scheme for unknown blocks,\ndefault=64,64,64)"
  type: long?
  inputBinding:
    prefix: --rgb-unknown-scheme
- id: in_max_buffer_size
  doc: (default=1000000000)
  type: long?
  inputBinding:
    prefix: --max-buffer-size
- id: in_threads
  doc: (default=1)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_show_license
  doc: (show license and exit)
  type: boolean?
  inputBinding:
    prefix: --show-license
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gem2:20200110--0
cwlVersion: v1.1
baseCommand:
- gem-2-bed
- segments
