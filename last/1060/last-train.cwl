#!/usr/bin/env cwl-runner

baseCommand:
- last-train
class: CommandLineTool
cwlVersion: v1.0
id: last-train
inputs:
- doc: force reverse-complement symmetry
  id: rev_sym
  inputBinding:
    prefix: --revsym
  type: boolean
- doc: force symmetric substitution matrix
  id: mat_sym
  inputBinding:
    prefix: --matsym
  type: boolean
- doc: force insertion/deletion symmetry
  id: gap_sym
  inputBinding:
    prefix: --gapsym
  type: boolean
- doc: 'skip alignments with > PID% identity (default: 100)'
  id: pid
  inputBinding:
    prefix: --pid
  type: string
- doc: skip mostly-lowercase alignments (default=1)
  id: post_mask
  inputBinding:
    prefix: --postmask
  type: string
- doc: 'number of random sequence samples (default: 500)'
  id: sample_number
  inputBinding:
    prefix: --sample-number
  type: string
- doc: 'length of each sample (default: 2000)'
  id: sample_length
  inputBinding:
    prefix: --sample-length
  type: string
- doc: 'match score (default: 6 if Q>0, else 5)'
  id: r
  inputBinding:
    prefix: -r
  type: string
- doc: 'mismatch cost (default: 18 if Q>0, else 5)'
  id: q
  inputBinding:
    prefix: -q
  type: string
- doc: match/mismatch score matrix
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: 'gap existence cost (default: 21 if Q>0, else 15)'
  id: a
  inputBinding:
    prefix: -a
  type: string
- doc: 'gap extension cost (default: 9 if Q>0, else 3)'
  id: b
  inputBinding:
    prefix: -b
  type: string
- doc: insertion existence cost
  id: a
  inputBinding:
    prefix: -A
  type: string
- doc: insertion extension cost
  id: b
  inputBinding:
    prefix: -B
  type: string
- doc: 'query letters per random alignment (default: 1e6)'
  id: d
  inputBinding:
    prefix: -D
  type: long
- doc: maximum expected alignments per square giga
  id: e
  inputBinding:
    prefix: -E
  type: string
- doc: '0=reverse, 1=forward, 2=both (default: 2 if DNA, else 1)'
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: 'score matrix applies to forward strand of: 0=reference, 1=query (default:
    1)'
  id: s
  inputBinding:
    prefix: -S
  type: string
- doc: omit gapless alignments in COUNT others with > score- per-length
  id: c
  inputBinding:
    prefix: -C
  type: string
- doc: 'type of alignment: 0=local, 1=overlap (default: 0)'
  id: t
  inputBinding:
    prefix: -T
  type: string
- doc: 'maximum initial matches per query position (default: 10)'
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: 'use initial matches starting at every STEP-th position in each query (default:
    1)'
  id: k
  inputBinding:
    prefix: -k
  type: string
- doc: number of parallel threads
  id: p
  inputBinding:
    prefix: -P
  type: string
- doc: 'N/X is ambiguous in: 0=neither sequence, 1=reference, 2=query, 3=both (default=0)'
  id: x
  inputBinding:
    prefix: -X
  type: string
- doc: 'input format: 0=fasta or fastq-ignore, 1=fastq-sanger (default=fasta)'
  id: q
  inputBinding:
    prefix: -Q
  type: string
