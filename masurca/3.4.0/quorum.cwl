#!/usr/bin/env cwl-runner

baseCommand:
- quorum
class: CommandLineTool
cwlVersion: v1.0
id: quorum
inputs:
- doc: Mer database size (default 200M)
  id: size
  inputBinding:
    prefix: --size
  type: boolean
- doc: Number of threads (default number of cpus)
  id: threads
  inputBinding:
    prefix: --threads
  type: boolean
- doc: Output prefix (default quorum_corrected)
  id: prefix
  inputBinding:
    prefix: --prefix
  type: boolean
- doc: Kmer length (default 24)
  id: km_er_len
  inputBinding:
    prefix: --kmer-len
  type: boolean
- doc: Minimum quality char. Usually 33 or 64 (autodetect)
  id: min_q_char
  inputBinding:
    prefix: --min-q-char
  type: boolean
- doc: Minimum above -q for high quality base (5)
  id: min_quality
  inputBinding:
    prefix: --min-quality
  type: boolean
- doc: Window size for trimming
  id: window
  inputBinding:
    prefix: --window
  type: boolean
- doc: Maximum number of errors in a window
  id: error
  inputBinding:
    prefix: --error
  type: boolean
- doc: Minimum count for a k-mer to be good
  id: min_count
  inputBinding:
    prefix: --min-count
  type: boolean
- doc: Number of bases to skip to find anchor kmer
  id: skip
  inputBinding:
    prefix: --skip
  type: boolean
- doc: Numer of good kmer in a row for anchor
  id: anchor
  inputBinding:
    prefix: --anchor
  type: boolean
- doc: Minimum count for an anchor kmer
  id: anchor_count
  inputBinding:
    prefix: --anchor-count
  type: boolean
- doc: Contaminant sequences
  id: contaminant
  inputBinding:
    prefix: --contaminant
  type: boolean
- doc: Trim sequences with contaminant mers
  id: trim_contaminant
  inputBinding:
    prefix: --trim-contaminant
  type: boolean
- doc: Do not discard reads, output a single N (false)
  id: no_discard
  inputBinding:
    prefix: --no-discard
  type: boolean
- doc: Preserve mate pairs in two files
  id: paired_files
  inputBinding:
    prefix: --paired-files
  type: boolean
- doc: Trim homo-polymer on 3' end
  id: homo_trim
  inputBinding:
    prefix: --homo-trim
  type: boolean
- doc: Display debugging information
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
