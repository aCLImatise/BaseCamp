#!/usr/bin/env cwl-runner

baseCommand:
- whamg
class: CommandLineTool
cwlVersion: v1.0
id: whamg
inputs:
- doc: ',GL000207.1 2> wham.err > wham.vcf'
  id: e
  inputBinding:
    prefix: -e
  type: string
- doc: '<STRING>  Comma separated list of bam files or a file with     one bam (full
    path) per line.                       '
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: '<STRING>  The reference genome (indexed fasta).               '
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: '<FLAG>    Exits the program after the stats are                gathered. [false]                                   '
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: '<STRING>  File to write graph to (very large output). [false] '
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: '<STRING>  Region in format: seqid:start-end [whole genome]    '
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: '<INT>     Mapping quality filter [20].                        '
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '<STRING>  non standard split read tag [SA]                    '
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: '<FLAG>    Sample reads until success. [false]                 '
  id: z
  inputBinding:
    prefix: -z
  type: boolean
- doc: '<INT>     Minimum number of matching bases (both reads).[100] '
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: '<FLAG>    WHAM-GRAPHENING can fail if does not sample            enough reads.
    This flag prevents whamg                 from exiting. If your bam header has
    seqids not in     the bam (e.g. split by region) use -z.                '
  id: z
  inputBinding:
    prefix: -z
  type: boolean
- doc: '<STRING>  WHAM-GRAPHENING uses the optional bwa-mem SA tag.      Older version
    of bwa-mem used XP.                     '
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: '<STRING>  A list of seqids to include or exclude while           sampling
    insert and depth.  For humans you should      use the standard chromosomes 1,2,3...X,Y.             '
  id: e
  inputBinding:
    prefix: -e
  type: boolean
