class: CommandLineTool
id: novolrpolish.cwl
inputs:
- id: novo_craft
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: long
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: read
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: polisher
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: format_specific
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in
  doc: the input BAM file [stdin]
  type: string
  inputBinding:
    prefix: -in
- id: lb_short
  doc: <Library ID's for short  identifies the libraries that contain short reads
    (e.g. Illumina) []
  type: boolean
  inputBinding:
    prefix: -LBShort
- id: lb_long
  doc: <Library ID's for long si identifies the libraries with long single molecule
    reads []
  type: boolean
  inputBinding:
    prefix: -LBLong
- id: out
  doc: the output file as alternative to stdout. [stdout]
  type: File
  inputBinding:
    prefix: -out
- id: region
  doc: genomic region (chr:99..[chr:]999). Index file is recommended for better performance,
    and is used automatically if it exists. See 'bamtools help index' for more details
    on creating one
  type: string
  inputBinding:
    prefix: -region
- id: fast_a
  doc: The contigs to be polished.
  type: string
  inputBinding:
    prefix: -fasta
- id: fq
  doc: Output is in FASTQ, Default is FASTA format.
  type: boolean
  inputBinding:
    prefix: -fq
- id: base_q
  doc: Assumed phred scaled base quality for fasta input. [30]
  type: string
  inputBinding:
    prefix: -baseq
- id: min_q
  doc: Minimum quality for a correction. [30]
  type: string
  inputBinding:
    prefix: -minq
- id: min_mapq
  doc: Minimum MAPQ for using a read in pileup. [2]
  type: string
  inputBinding:
    prefix: -minMAPQ
outputs: []
cwlVersion: v1.1
baseCommand:
- novolrpolish
