#!/usr/bin/env cwl-runner

baseCommand:
- SeqPrep
class: CommandLineTool
cwlVersion: v1.0
id: seqprep
inputs:
- doc: <Quality score cutoff for mismatches to be counted in overlap; default = 13>
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: <Minimum length of a trimmed or merged read to print it; default = 30>
  id: l
  inputBinding:
    prefix: -L
  type: boolean
- doc: <forward read primer/adapter sequence to trim as it would appear at the end
    of a read (recommend about 20bp of this) (should validate by grepping a file);
    default (genomic non-multiplexed adapter1) = AGATCGGAAGAGCACACGTC>
  id: a
  inputBinding:
    prefix: -A
  type: boolean
- doc: <reverse read primer/adapter sequence to trim as it would appear at the end
    of a read (recommend about 20bp of this) (should validate by grepping a file);
    default (genomic non-multiplexed adapter2) = AGATCGGAAGAGCGTCGTGT>
  id: b
  inputBinding:
    prefix: -B
  type: boolean
- doc: <minimum overall base pair overlap with adapter sequence to trim; default =
    10>
  id: o
  inputBinding:
    prefix: -O
  type: boolean
- doc: <maximum fraction of good quality mismatching bases for primer/adapter overlap;
    default = 0.020000>
  id: m
  inputBinding:
    prefix: -M
  type: boolean
- doc: <minimum fraction of matching bases for primer/adapter overlap; default = 0.870000>
  id: n
  inputBinding:
    prefix: -N
  type: boolean
- doc: <adapter alignment band-width; default = 50>
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: <adapter alignment gap-open; default = 8>
  id: q
  inputBinding:
    prefix: -Q
  type: boolean
- doc: <adapter alignment gap-extension; default = 2>
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: <adapter alignment gap-end; default = 2>
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: <adapter alignment minimum local alignment score cutoff [roughly (2*num_hits)
    - (num_gaps*gap_open) - (num_gaps*gap_close) - (gap_len*gap_extend) - (2*num_mismatches)];
    default = 26>
  id: z
  inputBinding:
    prefix: -Z
  type: boolean
- doc: <read alignment band-width; default = 50>
  id: w
  inputBinding:
    prefix: -w
  type: boolean
- doc: <read alignment gap-open; default = 26>
  id: w
  inputBinding:
    prefix: -W
  type: boolean
- doc: <read alignment gap-extension; default = 9>
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: <read alignment gap-end; default = 5>
  id: p
  inputBinding:
    prefix: -P
  type: boolean
- doc: <read alignment maximum fraction gap cutoff; default = 0.125000>
  id: x
  inputBinding:
    prefix: -X
  type: boolean
- doc: <use mask; N will replace adapters>
  id: z
  inputBinding:
    prefix: -z
  type: boolean
- doc: <max number of pretty alignments to write (if -E provided); default = 10000>
  id: x
  inputBinding:
    prefix: -x
  type: boolean
- doc: <minimum overall base pair overlap to merge two reads; default = 15>
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: <maximum fraction of good quality mismatching bases to overlap reads; default
    = 0.020000>
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: <minimum fraction of matching bases to overlap reads; default = 0.900000>
  id: n
  inputBinding:
    prefix: -n
  type: boolean
