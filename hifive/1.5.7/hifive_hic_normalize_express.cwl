class: CommandLineTool
id: hifive_hic_normalize_express.cwl
inputs:
- id: project
  doc: The name of the HiFive HiC project to normalize.
  type: string
  inputBinding:
    position: 0
- id: min_distance
  doc: 'The minimum interaction distance to include in normalization. [default: 0]'
  type: long
  inputBinding:
    prefix: --min-distance
- id: max_distance
  doc: 'The maximum interaction distance to include in normalization (None or zero
    indicate no maximum). [default: None]'
  type: long
  inputBinding:
    prefix: --max-distance
- id: chromosomes
  doc: 'A comma-separated list of chromosomes to learn correction values for (None
    indicates all chromosomes). [default: None]'
  type: string
  inputBinding:
    prefix: --chromosomes
- id: output_file
  doc: 'An alternate filename to save the normalized project to. If not given, the
    original project file will be overwritten. [default: None]'
  type: string
  inputBinding:
    prefix: --output-file
- id: quiet
  doc: 'Silence output messages. [default: False]'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: express_iterations
  doc: 'The minimum number of iterations to run the express learning phase for. [default:
    1000]'
  type: string
  inputBinding:
    prefix: --express-iterations
- id: min_change
  doc: 'The maximum allowable change per iteration in fend correction parameter values
    allowable to terminate learning. [default: 0.0001]'
  type: string
  inputBinding:
    prefix: --min-change
- id: remove_distance
  doc: 'Remove the distant-dependent portion of the signal prior to learning corrections
    with the express algorithm. [default: False]'
  type: boolean
  inputBinding:
    prefix: --remove-distance
- id: express_reads
  doc: 'Which set of reads to use for express normalization. [default: cis]'
  type: string
  inputBinding:
    prefix: --express-reads
- id: binary
  doc: 'Use binary indicator instead of counts. [default: False]'
  type: boolean
  inputBinding:
    prefix: --binary
- id: knight_ruiz
  doc: 'Use Knight-Ruiz algorithm for unweighted matrix balancing. [default: False]'
  type: boolean
  inputBinding:
    prefix: --knight-ruiz
- id: min_interactions
  doc: 'The minimum number of interactions for fend filtering, if refiltering is required
    due to distance cutoff or selected reads. [default: 20]'
  type: long
  inputBinding:
    prefix: --min-interactions
outputs: []
cwlVersion: v1.1
baseCommand:
- hifive
- hic-normalize
- express
