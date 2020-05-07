class: CommandLineTool
id: teloclip_extract.cwl
inputs:
- id: ref_idx
  doc: Path to fai index for reference fasta. Index fasta using `samtools faidx FASTA`
  type: string
  inputBinding:
    prefix: --refIdx
- id: prefix
  doc: 'Use this prefix for output files. Default: None.'
  type: string
  inputBinding:
    prefix: --prefix
- id: extract_reads
  doc: If set, write overhang reads to fasta by contig.
  type: boolean
  inputBinding:
    prefix: --extractReads
- id: extract_dir
  doc: 'Write extracted reads to this directory. Default: cwd.'
  type: string
  inputBinding:
    prefix: --extractDir
- id: min_clip
  doc: Require clip to extend past ref contig end by at least N bases.
  type: long
  inputBinding:
    prefix: --minClip
- id: max_break
  doc: Tolerate max N unaligned bases at contig ends.
  type: long
  inputBinding:
    prefix: --maxBreak
outputs: []
cwlVersion: v1.1
baseCommand:
- teloclip-extract
