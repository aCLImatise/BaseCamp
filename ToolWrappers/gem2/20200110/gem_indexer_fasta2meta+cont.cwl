class: CommandLineTool
id: gem_indexer_fasta2meta+cont.cwl
inputs:
- id: in_i
  doc: (mandatory)
  type: File?
  inputBinding:
    prefix: -i
- id: in_o
  doc: (mandatory)
  type: string?
  inputBinding:
    prefix: -o
- id: in_content_type
  doc: "'dna'|'protein'\n(default='dna')"
  type: boolean?
  inputBinding:
    prefix: --content-type
- id: in_force_fmi_general_index
  doc: '(default: deduced from content)'
  type: boolean?
  inputBinding:
    prefix: --force-fmi-general-index
- id: in_filter_function
  doc: "'iupac-dna'|'iupac-colorspace-dna'|'none'\n(default='iupac-dna')"
  type: boolean?
  inputBinding:
    prefix: --filter-function
- id: in_color_space
  doc: "(same as\n'--filter-function iupac-colorspace-dna')"
  type: boolean?
  inputBinding:
    prefix: --colorspace
- id: in_strip_unknown_bases_threshold
  doc: "'disable'|<integer>\n(default=50 for DNA,\n'disable' for protein)"
  type: boolean?
  inputBinding:
    prefix: --strip-unknown-bases-threshold
- id: in_complement_size_threshold
  doc: (default=2GB)
  type: long?
  inputBinding:
    prefix: --complement-size-threshold
- id: in_complement
  doc: "'yes'|'emulate'|'no'\n(default='yes' for DNA below threshold,\n'emulate' for\
    \ DNA above threshold,\n'no' for protein)"
  type: boolean?
  inputBinding:
    prefix: --complement
- id: in_verbose
  doc: (default=false)
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_show_license
  doc: (print license and exit)
  type: boolean?
  inputBinding:
    prefix: --show-license
- id: in_gem_indexer_fast_a_two_meta
  doc: ''
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
- gem-indexer_fasta2meta+cont
