class: CommandLineTool
id: pirs_diploid.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: reference
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: snp_rate
  doc: 'A floating-point number in the interval [0, 1] that specifies the heterozygous
    SNP rate.  Default: 0.001'
  type: string
  inputBinding:
    prefix: --snp-rate
- id: in_del_rate
  doc: 'A floating-point number in the interval [0, 1] that specifies the heterozygous
    indel rate. Default: 0.0001'
  type: string
  inputBinding:
    prefix: --indel-rate
- id: sv_rate
  doc: 'A floating-point number in the interval [0, 1] that specifies the large-scale
    structural variation (insertion, deletion, inversion) rate in the diploid genome.
    Default: 0.000001'
  type: string
  inputBinding:
    prefix: --sv-rate
- id: transition_to_transversion_ratio
  doc: 'In a SNP, a transition is when a purine or pyrimidine is changed to one of
    the same (A <=> G, C <=> T) while a transversion is when a purine is changed into
    a pyrimidine or vice-versa.  This option specifies a floating-point number RATIO
    that gives the ratio of the transition probability to the transversion probability
    for simulated SNPs. Default: 2.0'
  type: string
  inputBinding:
    prefix: --transition-to-transversion-ratio
- id: output_prefix
  doc: 'Use PREFIX as the prefix of the output file and logs. Default: "pirs_diploid"'
  type: string
  inputBinding:
    prefix: --output-prefix
- id: output_file
  doc: Use FILE as the name of the output file. Use '-' for standard output; this
    also moves the informational messages from stdout to stderr.
  type: File
  inputBinding:
    prefix: --output-file
- id: output_file_type
  doc: 'The string "text" or "gzip" to specify the type of the output FASTA file containing
    the diploid copy of the genome, as well as the log files. Default: "text"'
  type: string
  inputBinding:
    prefix: --output-file-type
- id: no_logs
  doc: Do not write the log files.
  type: boolean
  inputBinding:
    prefix: --no-logs
- id: random_seed
  doc: 'Use SEED as the random seed. Default: time(NULL) * getpid()'
  type: string
  inputBinding:
    prefix: --random-seed
- id: quiet
  doc: Do not print informational messages.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: o
  doc: '>pirs.out 2>pirs.err'
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- pirs
- diploid
