class: CommandLineTool
id: recognicer.cwl
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
  doc: Name of the sample file you wish to run RECOGNICER on. This can either be the
    relative or the absolute path of the file. Must be in BED or BAM format.
  type: string
  inputBinding:
    prefix: --treatment_file
- id: control_file
  doc: Name of the control library in BED or BAM format. This can either be the relative
    or the absolute path of the file. If you wish to run RECOGNICERS without a control
    library, simply do not enter the file.
  type: string
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
  doc: Resolution of RECOGNICERS. Default value is 200 (bp)
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
- id: output_directory
  doc: Path of the directory in which results will be stored. Default path is the
    current path
  type: string
  inputBinding:
    prefix: --output_directory
- id: step_size
  doc: 'Step Size: the number of windows in one graining unit. Used for RECOGNICER
    algorithm'
  type: string
  inputBinding:
    prefix: --step_size
- id: step_score
  doc: 'Step Score: The minimum number of positive elements in the graining unit to
    call the unit positive. Used for RECOGNICER algorithm'
  type: string
  inputBinding:
    prefix: --step_score
- id: cpu
  doc: "CPU Core Count: The number of CPU cores RECOGNICER program will use when executing\
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
- recognicer
