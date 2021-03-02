class: CommandLineTool
id: gem_2_bed_splices_coverage.cwl
inputs:
- id: in_index
  doc: (mandatory)
  type: File?
  inputBinding:
    prefix: --index
- id: in_input
  doc: (default=stdin)
  type: File?
  inputBinding:
    prefix: --input
- id: in_mapped_ends
  doc: "'none'|'1'|'2'|<integer>\n(default=2)"
  type: boolean?
  inputBinding:
    prefix: --mapped-ends
- id: in_subtract_ns_from_error
  doc: "'false'|'true'\n(default: true)"
  type: boolean?
  inputBinding:
    prefix: --subtract-Ns-from-error
- id: in_subtract_splices_from_error
  doc: "'false'|'true'\n(default: true)"
  type: boolean?
  inputBinding:
    prefix: --subtract-splices-from-error
- id: in_max_errors
  doc: "'none'|<integer_or_fraction>\n(default=0.06)"
  type: boolean?
  inputBinding:
    prefix: --max-errors
- id: in_min_splice_size
  doc: "'none'|<integer>\n(default=1)"
  type: boolean?
  inputBinding:
    prefix: --min-splice-size
- id: in_max_splice_size
  doc: "'none'|<integer>\n(default: none)"
  type: boolean?
  inputBinding:
    prefix: --max-splice-size
- id: in_min_strata
  doc: "'none'|<integer_or_fraction>\n(default=1)"
  type: boolean?
  inputBinding:
    prefix: --min-strata
- id: in_max_strata
  doc: "'none'|<integer_or_fraction>\n(default=1)"
  type: boolean?
  inputBinding:
    prefix: --max-strata
- id: in_max_matches
  doc: "'none'|<integer>   (default: none)"
  type: boolean?
  inputBinding:
    prefix: --max-matches
- id: in_directional_as_end
  doc: "'none'|1'|'2'|<integer>\n(default: none)"
  type: boolean?
  inputBinding:
    prefix: --directional-as-end
- id: in_full_filter
  doc: "(default: see above,\n'-F help' shows syntax)"
  type: string?
  inputBinding:
    prefix: --full-filter
- id: in_strand_from_current_block
  doc: "'forward'|'reverse'\n(default: none)"
  type: boolean?
  inputBinding:
    prefix: --strand-from-current-block
- id: in_strand_from_first_block
  doc: "'forward'|'reverse'\n(default: none)"
  type: boolean?
  inputBinding:
    prefix: --strand-from-first-block
- id: in_strand_from_splices
  doc: "'forward'|'reverse'\n(default: none)"
  type: boolean?
  inputBinding:
    prefix: --strand-from-splices
- id: in_threshold
  doc: (default=0.1)
  type: boolean?
  inputBinding:
    prefix: --threshold
- id: in_output
  doc: (mandatory)
  type: File?
  inputBinding:
    prefix: --output
- id: in_scale
  doc: "'linear'|'log'|'log'<int>|'root'<int>\n(default='linear')"
  type: boolean?
  inputBinding:
    prefix: --scale
- id: in_levels_per_scale_unit
  doc: "(quantize levels,\ndefault: disabled)"
  type: long?
  inputBinding:
    prefix: --levels-per-scale-unit
- id: in_back_transform
  doc: "(invert scale transformation)\nafter quantization,\ndefault: disabled)"
  type: boolean?
  inputBinding:
    prefix: --back-transform
- id: in_precision_digits
  doc: (default=6)
  type: long?
  inputBinding:
    prefix: --precision-digits
- id: in_emit_zeros
  doc: (default=false)
  type: boolean?
  inputBinding:
    prefix: --emit-zeros
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
- id: in_gem_two_bed
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_blocks_coverage_vertical_line_splices_coverage
  doc: ''
  type: string
  inputBinding:
    position: 1
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
- splices-coverage
