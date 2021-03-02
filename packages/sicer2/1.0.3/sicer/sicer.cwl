class: CommandLineTool
id: sicer.cwl
inputs:
- id: in_treatment_file
  doc: "Name of the sample file you wish to run SICER on. This\ncan either be the\
    \ relative or the absolute path of the\nfile. Must be in BED or BAM format."
  type: File?
  inputBinding:
    prefix: --treatment_file
- id: in_control_file
  doc: "Name of the control library in BED or BAM format. This\ncan either be the\
    \ relative or the absolute path of the\nfile. If you wish to run SICER without\
    \ a control\nlibrary, simply do not enter the file."
  type: File?
  inputBinding:
    prefix: --control_file
- id: in_species
  doc: 'The species/genome used (ex: hg38)'
  type: long?
  inputBinding:
    prefix: --species
- id: in_redundancy_threshold
  doc: "The number of copies of indentical reads allowed in a\nlibrary. Default value\
    \ is 1"
  type: long?
  inputBinding:
    prefix: --redundancy_threshold
- id: in_window_size
  doc: Resolution of SICER. Default value is 200 (bp)
  type: long?
  inputBinding:
    prefix: --window_size
- id: in_fragment_size
  doc: "The amount of shift from the beginning of a read to\nthe center of the DNA\
    \ fragment represented by the\nread. Default value is 150 (bp)."
  type: long?
  inputBinding:
    prefix: --fragment_size
- id: in_effective_genome_fraction
  doc: "Effective genome as fraction of the genome size.\nDefault value is 0.74"
  type: long?
  inputBinding:
    prefix: --effective_genome_fraction
- id: in_false_discovery_rate
  doc: "Remove all islands with an false_discovery_rate below\ncutoff. Default value\
    \ is 0.01."
  type: double?
  inputBinding:
    prefix: --false_discovery_rate
- id: in_output_directory
  doc: "Path of the directory in which results will be stored.\nDefault path is the\
    \ current path"
  type: Directory?
  inputBinding:
    prefix: --output_directory
- id: in_gap_size
  doc: "The minimum length of a \"gap\" such that neighboring\nwindow is an \"island.\"\
    \ This value must be a multiple\nof the window size. Default value is 600 (bp)"
  type: long?
  inputBinding:
    prefix: --gap_size
- id: in_e_value
  doc: "E-value. Requires user input when no control library\nis provided. Default\
    \ value is 1000"
  type: long?
  inputBinding:
    prefix: --e_value
- id: in_cpu
  doc: "CPU Core Count: The number of CPU cores SICER program\nwill use when executing\
    \ multi-processing tasks.\nOptimal core count is the species' number of\nchromosomes.\
    \ Default value is the maximum number of\ncores avaiable in the system."
  type: long?
  inputBinding:
    prefix: --cpu
- id: in_significant_reads
  doc: "Output Significant Reads: Enter \"--significant_reads\"\nto have SICER produce\
    \ a BED file of treatment reads\nfiltered by significant islands and WIG file\
    \ of\nfiltered reads binned into windows"
  type: File?
  inputBinding:
    prefix: --significant_reads
- id: in_verbose
  doc: increase console output verbosity
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_h
  doc: ''
  type: string?
  inputBinding:
    prefix: -h
- id: in_use
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_more
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_information
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: "Path of the directory in which results will be stored.\nDefault path is the\
    \ current path"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
- id: out_significant_reads
  doc: "Output Significant Reads: Enter \"--significant_reads\"\nto have SICER produce\
    \ a BED file of treatment reads\nfiltered by significant islands and WIG file\
    \ of\nfiltered reads binned into windows"
  type: File?
  outputBinding:
    glob: $(inputs.in_significant_reads)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sicer2:1.0.3--py38hd504320_0
cwlVersion: v1.1
baseCommand:
- sicer
