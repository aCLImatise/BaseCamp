class: CommandLineTool
id: sicer_df.cwl
inputs:
- id: use
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: more
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: information
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: treatment_file
  doc: Name of the sample file you wish to run SICER on. This can either be the relative
    or the absolute path of the file. Must be in BED or BAM format.
  type: string[]
  inputBinding:
    prefix: --treatment_file
- id: control_file
  doc: '[CONTROL_FILE [CONTROL_FILE ...]], -c [CONTROL_FILE [CONTROL_FILE ...]] Name
    of the control library in BED or BAM format. This can either be the relative or
    the absolute path of the file. If you wish to run SICER without a control library,
    simply do not enter the file.'
  type: boolean
  inputBinding:
    prefix: --control_file
- id: species
  doc: 'The species/genome used (ex: hg38)'
  type: string
  inputBinding:
    prefix: --species
- id: redundancy_threshold
  doc: The number of copies of indentical reads allowed in a library. Default value
    is 1
  type: string
  inputBinding:
    prefix: --redundancy_threshold
- id: window_size
  doc: Resolution of SICER. Default value is 200 (bp)
  type: string
  inputBinding:
    prefix: --window_size
- id: fragment_size
  doc: The amount of shift from the beginning of a read to the center of the DNA fragment
    represented by the read. Default value is 150 (bp).
  type: string
  inputBinding:
    prefix: --fragment_size
- id: effective_genome_fraction
  doc: Effective genome as fraction of the genome size. Default value is 0.74
  type: string
  inputBinding:
    prefix: --effective_genome_fraction
- id: false_discovery_rate
  doc: Remove all islands with an false_discovery_rate below cutoff. Default value
    is 0.01.
  type: string
  inputBinding:
    prefix: --false_discovery_rate
- id: false_discovery_rate_df
  doc: Cutoff for identification of significant changes been wild-type library and
    knockout library. Only provide a value when comparing two libraries.
  type: string
  inputBinding:
    prefix: --false_discovery_rate_df
- id: output_directory
  doc: Path of the directory in which results will be stored. Default path is the
    current path
  type: string
  inputBinding:
    prefix: --output_directory
- id: gap_size
  doc: The minimum length of a "gap" such that neighboring window is an "island."
    This value must be a multiple of the window size. Default value is 600 (bp)
  type: string
  inputBinding:
    prefix: --gap_size
- id: e_value
  doc: E-value. Requires user input when no control library is provided. Default value
    is 1000
  type: string
  inputBinding:
    prefix: --e_value
- id: cpu
  doc: "CPU Core Count: The number of CPU cores SICER program will use when executing\
    \ multi-processing tasks. Optimal core count is the species' number of chromosomes.\
    \ Default value is the maximum number of cores avaiable in the system."
  type: string
  inputBinding:
    prefix: --cpu
- id: significant_reads
  doc: 'Output Significant Reads: Enter "--significant_reads" to have SICER produce
    a BED file of treatment reads filtered by significant islands and WIG file of
    filtered reads binned into windows'
  type: boolean
  inputBinding:
    prefix: --significant_reads
- id: verbose
  doc: increase console output verbosity
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- sicer_df
