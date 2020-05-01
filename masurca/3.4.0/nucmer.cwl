#!/usr/bin/env cwl-runner

baseCommand:
- nucmer
class: CommandLineTool
cwlVersion: v1.0
id: nucmer
inputs:
- doc: Use anchor matches that are unique in both the reference and query (false)
  id: mum
  inputBinding:
    prefix: --mum
  type: boolean
- doc: Use all anchor matches regardless of their uniqueness (false)
  id: max_match
  inputBinding:
    prefix: --maxmatch
  type: boolean
- doc: Set the distance an alignment extension will attempt to extend poor scoring
    regions before giving up (200)
  id: break_len
  inputBinding:
    prefix: --breaklen
  type: string
- doc: Sets the minimum length of a cluster of matches (65)
  id: min_cluster
  inputBinding:
    prefix: --mincluster
  type: string
- doc: Set the maximum diagonal difference between two adjacent anchors in a cluster
    (5)
  id: diag_diff
  inputBinding:
    prefix: --diagdiff
  type: string
- doc: Set the maximum diagonal difference between two adjacent anchors in a cluster
    as a differential fraction of the gap length (0.12)
  id: diag_factor
  inputBinding:
    prefix: --diagfactor
  type: string
- doc: Do not perform cluster extension step (false)
  id: no_extend
  inputBinding:
    prefix: --noextend
  type: boolean
- doc: Use only the forward strand of the Query sequences (false)
  id: forward
  inputBinding:
    prefix: --forward
  type: boolean
- doc: Set the maximum gap between two adjacent matches in a cluster (90)
  id: max_gap
  inputBinding:
    prefix: --maxgap
  type: string
- doc: Set the minimum length of a single exact match (20)
  id: min_match
  inputBinding:
    prefix: --minmatch
  type: string
- doc: Minimum length of an alignment, after clustering and extension (0)
  id: min_align
  inputBinding:
    prefix: --minalign
  type: string
- doc: No alignment score optimization, i.e. if an alignment extension reaches the
    end of a sequence, it will not backtrack to optimize the alignment score and instead
    terminate the alignment at the end of the sequence (false)
  id: no_optimize
  inputBinding:
    prefix: --nooptimize
  type: boolean
- doc: Use only the reverse complement of the Query sequences (false)
  id: reverse
  inputBinding:
    prefix: --reverse
  type: boolean
- doc: Don't simplify alignments by removing shadowed clusters. Use this option when
    aligning a sequence to itself to look for repeats (false)
  id: no_simplify
  inputBinding:
    prefix: --nosimplify
  type: boolean
- doc: Write output to PREFIX.delta (out)
  id: prefix
  inputBinding:
    prefix: --prefix
  type: string
- doc: Output delta file to PATH (instead of PREFIX.delta)
  id: delta
  inputBinding:
    prefix: --delta
  type: File
- doc: Output SAM file to PATH, short format
  id: sam_short
  inputBinding:
    prefix: --sam-short
  type: File
- doc: Output SAM file to PATH, long format
  id: sam_long
  inputBinding:
    prefix: --sam-long
  type: File
- doc: Save suffix array to files starting with PREFIX
  id: save
  inputBinding:
    prefix: --save
  type: string
- doc: Load suffix array from file starting with PREFIX
  id: load
  inputBinding:
    prefix: --load
  type: string
- doc: Proceed by batch of chunks of BASES from the reference
  id: batch
  inputBinding:
    prefix: --batch
  type: string
- doc: Use NUM threads (# of cores)
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: Detailed help
  id: full_help
  inputBinding:
    prefix: --full-help
  type: boolean
