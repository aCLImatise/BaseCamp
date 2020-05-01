#!/usr/bin/env cwl-runner

baseCommand:
- unicycler_check
class: CommandLineTool
cwlVersion: v1.0
id: unicycler_check
inputs:
- doc: Input SAM file of alignments (if this file doesn't exist, the alignment will
    be performed with results saved to this file - you can use the aligner arguments
    with this script)
  id: sam
  inputBinding:
    prefix: --sam
  type: string
- doc: FASTA file containing one or more reference sequences
  id: ref
  inputBinding:
    prefix: --ref
  type: string
- doc: FASTQ file of long reads
  id: reads
  inputBinding:
    prefix: --reads
  type: string
- doc: 'Minimum alignment length (bp) - exclude alignments shorter than this length
    (default: 100)'
  id: min_len
  inputBinding:
    prefix: --min_len
  type: long
- doc: 'Window size for error summaries (default: 100)'
  id: error_window_size
  inputBinding:
    prefix: --error_window_size
  type: string
- doc: 'Window size for depth summaries (default: 100)'
  id: depth_window_size
  inputBinding:
    prefix: --depth_window_size
  type: string
- doc: 'Threshold for high error rates, expressed as the fraction between the mean
    error rate and the random alignment error rate (default: 0.3)'
  id: error_rate_threshold
  inputBinding:
    prefix: --error_rate_threshold
  type: string
- doc: 'P-value for low/high depth thresholds (default: 0.001)'
  id: depth_p_val
  inputBinding:
    prefix: --depth_p_val
  type: string
- doc: 'Path and/or prefix for table files summarising reference errors for reference
    windows (default: do not save window tables)'
  id: window_tables
  inputBinding:
    prefix: --window_tables
  type: string
- doc: 'Path and/or prefix for table files summarising reference errors at each base
    (default: do not save base tables)'
  id: base_tables
  inputBinding:
    prefix: --base_tables
  type: string
- doc: 'Path for HTML report (default: do not save HTML report)'
  id: html
  inputBinding:
    prefix: --html
  type: string
- doc: 'Number of CPU threads used to align (default: the number of available CPUs)'
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: 'Level of stdout information (0 to 2) (default: 1)'
  id: verbosity
  inputBinding:
    prefix: --verbosity
  type: string
