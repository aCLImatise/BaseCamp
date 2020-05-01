#!/usr/bin/env cwl-runner

baseCommand:
- compareMotifs.pl
class: CommandLineTool
cwlVersion: v1.0
id: comparemotifs.pl
inputs:
- doc: '<freqError|absDifference|correlation> (Stat used to compute matrix similarity.
    default: correlation)'
  id: stat
  inputBinding:
    prefix: -stat
  type: boolean
- doc: (scale logos to bit content, default present nucleotide percentage)
  id: bits
  inputBinding:
    prefix: -bits
  type: boolean
- doc: (output RNA motifs, use RNA motif/miRNA database for comparison)
  id: rna
  inputBinding:
    prefix: -rna
  type: boolean
- doc: (do not check for matches on reverse strand)
  id: norev_opp
  inputBinding:
    prefix: -norevopp
  type: boolean
- doc: (will remove redundant motifs, output unique ones, and then quit)
  id: reduced_motifs
  inputBinding:
    prefix: -reducedMotifs
  type: string
- doc: (will compute all pairwise similarity scores to matrix, then quit)
  id: matrix
  inputBinding:
    prefix: -matrix
  type: string
- doc: (leave out the humor)
  id: no_facts
  inputBinding:
    prefix: -nofacts
  type: boolean
- doc: (internal option )
  id: dbview
  inputBinding:
    prefix: -dbview
  type: boolean
- doc: (information to use in dbview, internal option)
  id: db_table
  inputBinding:
    prefix: -dbTable
  type: string
- doc: <#> (number of CPUs to use)
  id: cpu
  inputBinding:
    prefix: -cpu
  type: boolean
- doc: (don't compare to known motifs or print similar motifs)
  id: basic
  inputBinding:
    prefix: -basic
  type: boolean
- doc: (revert to using seqlogo/weblogo/ghostscript, by default uses SVG now)
  id: seq_logo
  inputBinding:
    prefix: -seqlogo
  type: boolean
