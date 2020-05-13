class: CommandLineTool
id: hifive_hic_complete_probability.cwl
inputs:
- id: fend
  doc: Fend file in HiCPipe-compatible tabular format, optionally containing fend
    characteristics (GC content and/or mappability).
  type: string
  inputBinding:
    prefix: --fend
- id: bed
  doc: Bed file containing either RE fragment boundary data or RE cutsites.
  type: string
  inputBinding:
    prefix: --bed
- id: length
  doc: Text file containing chromosome names and lengths.
  type: long
  inputBinding:
    prefix: --length
- id: binned
  doc: Interval to bin data into. If set to zero, indicates non-uniform binning to
    be read from bed file.
  type: string
  inputBinding:
    prefix: --binned
- id: re
  doc: The name of the restriction enzyme used to produce the RE fragments.
  type: string
  inputBinding:
    prefix: --re
- id: genome
  doc: The name of the genome RE fragments correspond to.
  type: string
  inputBinding:
    prefix: --genome
- id: s
  doc: BAM, --bam BAM BAM A pair of BAM read end files from a single sequencing run.
    For multiple runs, this option can be passed multiple times.
  type: string
  inputBinding:
    prefix: -S
- id: raw
  doc: A tab-separated text file containing pairs of read ends (chr1 pos1 strand1
    chr2 pos2 strand2), one per line. For multiple files, this option can be passed
    multiple times.
  type: string
  inputBinding:
    prefix: --raw
- id: mat
  doc: A HiCPipe-style tabular MAT file containing fend pair counts.
  type: string
  inputBinding:
    prefix: --mat
- id: matrix
  doc: Binned matrix containing summed fend interactions.
  type: string
  inputBinding:
    prefix: --matrix
- id: insert
  doc: 'The maximum allowable distance sum between both fend ends and cutsites. [default:
    500]'
  type: string
  inputBinding:
    prefix: --insert
- id: skip_duplicate_filtering
  doc: 'Skip filtering of PCR duplicates. [default: False]'
  type: boolean
  inputBinding:
    prefix: --skip-duplicate-filtering
- id: min_interactions
  doc: 'The minimum number of interactions needed for valid fragment. [default: 20]'
  type: long
  inputBinding:
    prefix: --min-interactions
- id: min_distance
  doc: 'The minimum interaction distance to include in fragment filtering. [default:
    0]'
  type: long
  inputBinding:
    prefix: --min-distance
- id: max_distance
  doc: 'The maximum interaction distance to include in fragment filtering (None or
    zero indicate no maximum). [default: None]'
  type: long
  inputBinding:
    prefix: --max-distance
- id: chromosomes
  doc: 'A comma-separated list of chromosomes to learn correction values for (None
    indicates all chromosomes). [default: None]'
  type: string
  inputBinding:
    prefix: --chromosomes
- id: min_binsize
  doc: 'The smallest interaction distance bin size for the distance-dependence function.
    [default: 1000]'
  type: long
  inputBinding:
    prefix: --min-binsize
- id: num_bins
  doc: 'The number of bins to partion the interaction distance range into for distance-dependence
    function. A value of zero indicates that finding the distance dependence function
    should be skipped. [default: 100]'
  type: string
  inputBinding:
    prefix: --num-bins
- id: quiet
  doc: 'Silence output messages. [default: False]'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: prefix
  doc: A prefix for the output files (*.fends, *.hcd, and *.hcp).
  type: string
  inputBinding:
    prefix: --prefix
- id: o
  doc: OUTPUT OUTPUT, --output OUTPUT OUTPUT OUTPUT File names for the Fend, HiCData,
    and HiC project files to be created.
  type: string
  inputBinding:
    prefix: -o
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
outputs: []
cwlVersion: v1.1
baseCommand:
- hifive
- hic-complete
- probability
