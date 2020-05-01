#!/usr/bin/env cwl-runner

baseCommand:
- quorum_error_correct_reads
class: CommandLineTool
cwlVersion: v1.0
id: quorum_error_correct_reads
inputs:
- doc: Number of threads (1)
  id: thread
  inputBinding:
    prefix: --thread
  type: string
- doc: Minimum count for a k-mer to be considered "good" (1)
  id: min_count
  inputBinding:
    prefix: --min-count
  type: string
- doc: Number of bases to skip for start k-mer (1)
  id: skip
  inputBinding:
    prefix: --skip
  type: string
- doc: Number of good k-mer in a row for anchor (2)
  id: good
  inputBinding:
    prefix: --good
  type: string
- doc: Minimum count for an anchor k-mer (3)
  id: anchor_count
  inputBinding:
    prefix: --anchor-count
  type: string
- doc: Size of window (10)
  id: window
  inputBinding:
    prefix: --window
  type: string
- doc: Maximum number of error in a window (3)
  id: error
  inputBinding:
    prefix: --error
  type: string
- doc: Output file prefix (error_corrected)
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: Jellyfish database of contaminant k-mers
  id: contaminant
  inputBinding:
    prefix: --contaminant
  type: File
- doc: Trim reads containing contaminated k-mers instead of discarding (false)
  id: trim_contaminant
  inputBinding:
    prefix: --trim-contaminant
  type: boolean
- doc: Trim homo-polymer run at the 3' end
  id: homo_trim
  inputBinding:
    prefix: --homo-trim
  type: long
- doc: Gzip output file (false)
  id: gzip
  inputBinding:
    prefix: --gzip
  type: boolean
- doc: Do not memory map the input mer database (false)
  id: no_mmap
  inputBinding:
    prefix: --no-mmap
  type: boolean
- doc: Probability of a base being an error (0.01)
  id: a_priori_error_rate
  inputBinding:
    prefix: --apriori-error-rate
  type: string
- doc: Error probability threshold in Poisson test (1.0e-06)
  id: poisson_threshold
  inputBinding:
    prefix: --poisson-threshold
  type: string
- doc: Poisson cutoff when there are multiple choices
  id: cut_off
  inputBinding:
    prefix: --cutoff
  type: string
- doc: Any base above with quality equal or greater is untouched when there are multiple
    choices
  id: qual_cut_off_value
  inputBinding:
    prefix: --qual-cutoff-value
  type: string
- doc: Any base above with quality equal or greater is untouched when there are multiple
    choices
  id: qual_cut_off_char
  inputBinding:
    prefix: --qual-cutoff-char
  type: string
- doc: Do not discard reads, output a single N (false)
  id: no_discard
  inputBinding:
    prefix: --no-discard
  type: boolean
- doc: Be verbose (false)
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
