class: CommandLineTool
id: vep_convert_cache.cwl
inputs:
- id: in_quiet
  doc: Shhh!
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_force_overwrite
  doc: Overwrite existing cache files if found
  type: boolean?
  inputBinding:
    prefix: --force_overwrite
- id: in_remove
  doc: Remove old cache files after conversion
  type: boolean?
  inputBinding:
    prefix: --remove
- id: in_dir
  doc: '[dir]          -d   Cache directory (default: $HOME/.vep)'
  type: boolean?
  inputBinding:
    prefix: --dir
- id: in_species
  doc: '[species]  -s   Species cache to convert ("all" to do all found)'
  type: boolean?
  inputBinding:
    prefix: --species
- id: in_compress
  doc: "[cmd]     -c   Path to binary/command to decompress gzipped files.\nDefaults\
    \ to \"gzip -dc\", some systems may prefer \"zcat\""
  type: boolean?
  inputBinding:
    prefix: --compress
- id: in_b_gzip
  doc: '[cmd]        -b   Path to bgzip binary (default: bgzip)'
  type: boolean?
  inputBinding:
    prefix: --bgzip
- id: in_tab_ix
  doc: '[cmd]        -t   Path to tabix binary (default: tabix)'
  type: boolean?
  inputBinding:
    prefix: --tabix
- id: in_perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_convert_cache_do_tpl
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_arguments
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vep_convert_cache
