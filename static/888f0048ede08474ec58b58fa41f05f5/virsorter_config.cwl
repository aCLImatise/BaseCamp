class: CommandLineTool
id: virsorter_config.cwl
inputs:
- id: in_show
  doc: 'show all configuration values  [default: False]'
  type: boolean?
  inputBinding:
    prefix: --show
- id: in_show_source
  doc: 'show path of the configuration file  [default: False]'
  type: boolean?
  inputBinding:
    prefix: --show-source
- id: in_in_it_source
  doc: 'initialize configuration file  [default: False]'
  type: boolean?
  inputBinding:
    prefix: --init-source
- id: in_db_dir
  doc: directory for databases; required for --init-source
  type: File?
  inputBinding:
    prefix: --db-dir
- id: in_set
  doc: "set KEY to VAL with the format: KEY=VAL; for nested dict in\nYAML use KEY1.KEY2=VAL\
    \ (e.g. virsorter config --set\nGROUP_INFO.RNA.MIN_GENOME_SIZE=2000)"
  type: long?
  inputBinding:
    prefix: --set
- id: in_get
  doc: the value of a KEY (e.g. virsorter config --get
  type: string?
  inputBinding:
    prefix: --get
- id: in_group_info_do_trna_dot_min_genome_size
  doc: -h, --help     Show this message and exit.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/virsorter:2.2.1--py_0
cwlVersion: v1.1
baseCommand:
- virsorter
- config
