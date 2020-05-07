class: CommandLineTool
id: hifive_hic_normalize_binning_probability.cwl
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
- id: max_iterations
  doc: 'The maximum number of iterations to carry on gradient descent for. [default:
    1000]'
  type: string
  inputBinding:
    prefix: --max-iterations
- id: min_change
  doc: 'The minimum allowable absolute gradient size to coninute learning process.
    [default: 0.0005]'
  type: string
  inputBinding:
    prefix: --min-change
- id: pre_calculate
  doc: 'Precalculate correction values from fend means for the probability algorithm.
    [default: False]'
  type: boolean
  inputBinding:
    prefix: --precalculate
- id: learning_step
  doc: "The scaling factor for decreasing learning rate by if step doesn't meet armijo\
    \ criterion. [default: 0.4]"
  type: string
  inputBinding:
    prefix: --learning-step
- id: probability_model
  doc: 'Which probability model to use for normalization. [default: binomial]'
  type: string
  inputBinding:
    prefix: --probability-model
- id: binning_iterations
  doc: 'The maximum number of iterations to run binning modeling for. [default: 1000]'
  type: string
  inputBinding:
    prefix: --binning-iterations
- id: learning_threshold
  doc: 'The learning threshold cutoff for binning algorithm. [default: 1.0]'
  type: string
  inputBinding:
    prefix: --learning-threshold
- id: binning_reads
  doc: 'Which set of reads to use for binning normalization. [default: cis]'
  type: string
  inputBinding:
    prefix: --binning-reads
- id: model
  doc: 'A comma-separated list of parameters to include in binning model. [default:
    len,distance]'
  type: string
  inputBinding:
    prefix: --model
- id: model_bins
  doc: 'A comma-separated list of the number of bins to separate model parameters
    into. [default: 20,20]'
  type: string
  inputBinding:
    prefix: --model-bins
- id: parameter_types
  doc: "A comma-separated list parameter types ('even' or 'fixed', depending on whether\
    \ bins should contain equal numbers of fends or be equally spaced along the parameter\
    \ range, and a '-const' suffix to indicate the values are not to be optimized).\
    \ [default: even,fixed- const]"
  type: string
  inputBinding:
    prefix: --parameter-types
- id: pseudo_counts
  doc: 'The number of pseudo-counts to add to each bin prior to learning. [default:
    None]'
  type: string
  inputBinding:
    prefix: --pseudocounts
outputs: []
cwlVersion: v1.1
baseCommand:
- hifive
- hic-normalize
- binning-probability
