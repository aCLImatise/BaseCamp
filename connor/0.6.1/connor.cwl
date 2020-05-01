#!/usr/bin/env cwl-runner

baseCommand:
- connor
class: CommandLineTool
cwlVersion: v1.0
id: connor
inputs:
- doc: path to input BAM
  id: input_bam
  inputBinding:
    position: 0
  type: string
- doc: path to deduplicated output BAM
  id: output_bam
  inputBinding:
    position: 1
  type: string
- doc: print all log messages to console
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: =False. Override validation warnings
  id: force
  inputBinding:
    prefix: --force
  type: boolean
- doc: ={output_filename}.log. Path to verbose log file
  id: log_file
  inputBinding:
    prefix: --log_file
  type: string
- doc: path to output BAM containing all original aligns annotated with BAM tags
  id: annotated_output_bam
  inputBinding:
    prefix: --annotated_output_bam
  type: string
- doc: '=0.6 (0..1.0): Ambiguous base calls at a specific position in a family are
    transformed to either majority base call, or N if the majority percentage is below
    this threshold. (Higher threshold results in more Ns in consensus.)'
  id: consensus_freq_threshold
  inputBinding:
    prefix: --consensus_freq_threshold
  type: string
- doc: '=3 (>=0): families with count of original reads < threshold are excluded from
    the deduplicated output. (Higher threshold is more stringent.)'
  id: min_family_size_threshold
  inputBinding:
    prefix: --min_family_size_threshold
  type: long
- doc: =1 (>=0); UMTs equal to or closer than this Hamming distance will be combined
    into a single family. Lower threshold make more families with more consistent
    UMTs; 0 implies UMI must match exactly.
  id: umt_distance_threshold
  inputBinding:
    prefix: --umt_distance_threshold
  type: string
- doc: =count; determines how filters will be ordered in the log results
  id: filter_order
  inputBinding:
    prefix: --filter_order
  type: string
- doc: =6 (>=1); length of UMT
  id: umt_length
  inputBinding:
    prefix: --umt_length
  type: string
