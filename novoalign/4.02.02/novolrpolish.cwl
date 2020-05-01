#!/usr/bin/env cwl-runner

baseCommand:
- novolrpolish
class: CommandLineTool
cwlVersion: v1.0
id: novolrpolish
inputs:
- doc: ''
  id: novo_craft
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: long
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: read
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: polisher
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: format_specific
  inputBinding:
    position: 4
  type: string
- doc: the input BAM file [stdin]
  id: in
  inputBinding:
    prefix: -in
  type: string
- doc: <Library ID's for short  identifies the libraries that contain short reads
    (e.g. Illumina) []
  id: lb_short
  inputBinding:
    prefix: -LBShort
  type: boolean
- doc: <Library ID's for long si identifies the libraries with long single molecule
    reads []
  id: lb_long
  inputBinding:
    prefix: -LBLong
  type: boolean
- doc: the output file as alternative to stdout. [stdout]
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: genomic region (chr:99..[chr:]999). Index file is recommended for better performance,
    and is used automatically if it exists. See 'bamtools help index' for more details
    on creating one
  id: region
  inputBinding:
    prefix: -region
  type: string
- doc: The contigs to be polished.
  id: fast_a
  inputBinding:
    prefix: -fasta
  type: string
- doc: Output is in FASTQ, Default is FASTA format.
  id: fq
  inputBinding:
    prefix: -fq
  type: boolean
- doc: Assumed phred scaled base quality for fasta input. [30]
  id: base_q
  inputBinding:
    prefix: -baseq
  type: string
- doc: Minimum quality for a correction. [30]
  id: min_q
  inputBinding:
    prefix: -minq
  type: string
- doc: Minimum MAPQ for using a read in pileup. [2]
  id: min_mapq
  inputBinding:
    prefix: -minMAPQ
  type: string
