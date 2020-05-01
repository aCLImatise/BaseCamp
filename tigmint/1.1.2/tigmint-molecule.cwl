#!/usr/bin/env cwl-runner

baseCommand:
- tigmint-molecule
class: CommandLineTool
cwlVersion: v1.0
id: tigmint-molecule
inputs:
- doc: Input BAM file sorted by BX tag then position, - for stdin
  id: bam
  inputBinding:
    position: 0
  type: string
- doc: Output TSV file [stdout]
  id: output
  inputBinding:
    prefix: --output
  type: File
- doc: Output BAM file with MI tags (optional)
  id: out_bam
  inputBinding:
    prefix: --out-bam
  type: File
- doc: Output in BED format [default]
  id: bed
  inputBinding:
    prefix: --bed
  type: boolean
- doc: Output in TSV format
  id: tsv
  inputBinding:
    prefix: --tsv
  type: boolean
- doc: Maximum distance between reads in the same molecule [50000]
  id: dist
  inputBinding:
    prefix: --dist
  type: string
- doc: Minimum number of reads per molecule (duplicates are filtered out) [4]
  id: reads
  inputBinding:
    prefix: --reads
  type: string
- doc: Minimum mapping quality [0]
  id: mapq
  inputBinding:
    prefix: --mapq
  type: string
- doc: Minimum ratio of alignment score (AS) over read length [0.65]
  id: as_ratio
  inputBinding:
    prefix: --as-ratio
  type: string
- doc: Maximum number of mismatches (NM) [5]
  id: nm
  inputBinding:
    prefix: --nm
  type: string
- doc: Minimum molecule size [2000]
  id: size
  inputBinding:
    prefix: --size
  type: string
