class: CommandLineTool
id: chicSignificantInteractions.cwl
inputs:
- id: x_fold_background
  doc: Filter x-fold over background. Used to merge neighboring bins with a broader
    peak but less significant interactions to a single peak with high significance.
    Used only for pValue option.
  type: string
  inputBinding:
    prefix: --xFoldBackground
- id: loose_p_value
  doc: loose p-value threshold to filter target regions in a first round. Used to
    merge neighboring bins with a broader peak but less significant interactions to
    a single peak with high significance. Used only for pValue option.
  type: string
  inputBinding:
    prefix: --loosePValue
- id: interaction_file
  doc: path to the interaction files which should be used for aggregation of the statistics.
  type: long[]
  inputBinding:
    prefix: --interactionFile
- id: p_value
  doc: p-value threshold to filter target regions for inclusion in differential analysis.
  type: string
  inputBinding:
    prefix: --pValue
- id: background_model_file
  doc: path to the background file which is necessary to compute the rbz-score
  type: string
  inputBinding:
    prefix: --backgroundModelFile
- id: range
  doc: RANGE   Defines the region upstream and downstream of a reference point which
    should be included. Format is --region upstream downstream, e.g. --region 500000
    500000 plots 500kb up- and 500kb downstream. This value should not exceed the
    range used in the other chic-tools.
  type: string
  inputBinding:
    prefix: --range
- id: target_file_list
  doc: The file to store the target file names.
  type: string
  inputBinding:
    prefix: --targetFileList
- id: batch_mode
  doc: Turn on batch mode. The given file for --interactionFile and or --targetFile
    contain a list of the to be processed files.
  type: boolean
  inputBinding:
    prefix: --batchMode
- id: threads
  doc: Number of threads (uses the python multiprocessing module).
  type: string
  inputBinding:
    prefix: --threads
- id: truncate_zerop_values
  doc: Sets all p-values which are equal to zero to one. This has the effect that
    the associated positions are not part of the significance decision.
  type: boolean
  inputBinding:
    prefix: --truncateZeroPvalues
- id: fixate_range
  doc: Fixate range of backgroundmodel starting at distance x. E.g. all values greater
    than 500kb are set to the value of the 500kb bin.
  type: string
  inputBinding:
    prefix: --fixateRange
- id: peak_interactions_threshold
  doc: The minimum number of interactions a detected peak needs to have to be considered.
  type: string
  inputBinding:
    prefix: --peakInteractionsThreshold
- id: resolution
  doc: Resolution of the bin in genomic units. Values are set as number of bases,
    e.g. 1000 for a 1kb, 5000 for a 5kb or 10000 for a 10kb resolution.This value
    is used to merge neighboring bins.
  type: string
  inputBinding:
    prefix: --resolution
- id: compute_sample_number
  doc: Number of samples to compute together. Applies only in batch mode.
  type: string
  inputBinding:
    prefix: --computeSampleNumber
outputs: []
cwlVersion: v1.1
baseCommand:
- chicSignificantInteractions
