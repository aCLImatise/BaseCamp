class: CommandLineTool
id: gem_mappability.cwl
inputs:
- id: in_emulate_complement
  doc: (for indices lacking it)
  type: boolean?
  inputBinding:
    prefix: --emulate-complement
- id: in_o
  doc: (mandatory)
  type: string?
  inputBinding:
    prefix: -o
- id: in_output_line_width
  doc: (default=70)
  type: long?
  inputBinding:
    prefix: --output-line-width
- id: in_l
  doc: (mandatory)
  type: long?
  inputBinding:
    prefix: -l
- id: in_approximation_threshold
  doc: "|'disable'\n(default: first multiple bin)"
  type: long?
  inputBinding:
    prefix: --approximation-threshold
- id: in_mismatch_alphabet
  doc: (default="ACGT")
  type: string?
  inputBinding:
    prefix: --mismatch-alphabet
- id: in_mismatches__default
  doc: '|<%_mismatches>      (default=0.02)'
  type: long?
  inputBinding:
    prefix: -m
- id: in_differences__default
  doc: '|<%_differences>  (default=0.02)'
  type: long?
  inputBinding:
    prefix: -e
- id: in_max_big_in_del_length
  doc: (default=0)
  type: long?
  inputBinding:
    prefix: --max-big-indel-length
- id: in_min_matched_bases
  doc: '|<%>        (default=0.80)'
  type: long?
  inputBinding:
    prefix: --min-matched-bases
- id: in_t
  doc: (default=1)
  type: long?
  inputBinding:
    prefix: -T
- id: in_show_license
  doc: (print license)
  type: boolean?
  inputBinding:
    prefix: --show-license
- id: in_gem_mapp_ability
  doc: -I <index_prefix>                       (mandatory)
  type: string
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
- gem-mappability
