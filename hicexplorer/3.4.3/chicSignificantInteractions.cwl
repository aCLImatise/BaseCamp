#!/usr/bin/env cwl-runner

baseCommand:
- chicSignificantInteractions
class: CommandLineTool
cwlVersion: v1.0
id: chicsignificantinteractions
inputs:
- doc: Filter x-fold over background. Used to merge neighboring bins with a broader
    peak but less significant interactions to a single peak with high significance.
    Used only for pValue option.
  id: x_fold_background
  inputBinding:
    prefix: --xFoldBackground
  type: string
- doc: loose p-value threshold to filter target regions in a first round. Used to
    merge neighboring bins with a broader peak but less significant interactions to
    a single peak with high significance. Used only for pValue option.
  id: loose_p_value
  inputBinding:
    prefix: --loosePValue
  type: string
- doc: path to the interaction files which should be used for aggregation of the statistics.
  id: interaction_file
  inputBinding:
    prefix: --interactionFile
  type:
    items: long
    type: array
- doc: p-value threshold to filter target regions for inclusion in differential analysis.
  id: p_value
  inputBinding:
    prefix: --pValue
  type: string
- doc: path to the background file which is necessary to compute the rbz-score
  id: background_model_file
  inputBinding:
    prefix: --backgroundModelFile
  type: string
- doc: RANGE   Defines the region upstream and downstream of a reference point which
    should be included. Format is --region upstream downstream, e.g. --region 500000
    500000 plots 500kb up- and 500kb downstream. This value should not exceed the
    range used in the other chic-tools.
  id: range
  inputBinding:
    prefix: --range
  type: string
- doc: The file to store the target file names.
  id: target_file_list
  inputBinding:
    prefix: --targetFileList
  type: string
- doc: Turn on batch mode. The given file for --interactionFile and or --targetFile
    contain a list of the to be processed files.
  id: batch_mode
  inputBinding:
    prefix: --batchMode
  type: boolean
- doc: Number of threads (uses the python multiprocessing module).
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: Sets all p-values which are equal to zero to one. This has the effect that
    the associated positions are not part of the significance decision.
  id: truncate_zerop_values
  inputBinding:
    prefix: --truncateZeroPvalues
  type: boolean
- doc: Fixate range of backgroundmodel starting at distance x. E.g. all values greater
    than 500kb are set to the value of the 500kb bin.
  id: fixate_range
  inputBinding:
    prefix: --fixateRange
  type: string
- doc: The minimum number of interactions a detected peak needs to have to be considered.
  id: peak_interactions_threshold
  inputBinding:
    prefix: --peakInteractionsThreshold
  type: string
- doc: Resolution of the bin in genomic units. Values are set as number of bases,
    e.g. 1000 for a 1kb, 5000 for a 5kb or 10000 for a 10kb resolution.This value
    is used to merge neighboring bins.
  id: resolution
  inputBinding:
    prefix: --resolution
  type: string
- doc: Number of samples to compute together. Applies only in batch mode.
  id: compute_sample_number
  inputBinding:
    prefix: --computeSampleNumber
  type: string
