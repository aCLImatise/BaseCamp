class: CommandLineTool
id: slimfastq.cwl
inputs:
- id: in_usrfilename_default_stdin
  doc: 'usr-filename : (default: stdin)'
  type: boolean?
  inputBinding:
    prefix: -u
- id: in__required_compressed
  doc: ': required - compressed'
  type: File?
  inputBinding:
    prefix: -f
- id: in_decode_instead_encoding
  doc: ': decode (instead of encoding)'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_silently_overwrite_files
  doc: ': silently overwrite existing files'
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_compression_level_default
  doc: ': compression level 1 to 4 (default is 3 )'
  type: long?
  inputBinding:
    prefix: -l
- id: in_alias_l_etcwhere
  doc: ": alias for -l 1, -l 2, etc\nWhere levels are:\n1: Uses less than 4M memory\
    \ (!), yields the worse compression (still much better than gzip)\n2: Uses about\
    \ 30M memory, resonable compression\n3: Uses about 80M memory, best compression\
    \ <default level>\n4: Compress a little more, but very costly (competition mode?)"
  type: boolean?
  inputBinding:
    prefix: '-1'
- id: in_version_internal_version
  doc: ': version : internal version'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_stat_information_compressed
  doc: ': stat : information about a compressed file'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_suppress_stats_info
  doc: ': suppress extra stats info that could have been seen by -s'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_usr_filename
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/slimfastq:2.04--he1b5a44_0
cwlVersion: v1.1
baseCommand:
- slimfastq
