class: CommandLineTool
id: ../../../novolrpolish.cwl
inputs:
- id: in_in
  doc: the input BAM file [stdin]
  type: File
  inputBinding:
    prefix: -in
- id: in_lb_short
  doc: "<Library ID's for short  identifies the libraries that\ncontain short reads\
    \ (e.g. Illumina) []"
  type: boolean
  inputBinding:
    prefix: -LBShort
- id: in_lb_long
  doc: "<Library ID's for long si identifies the libraries with\nlong single molecule\
    \ reads []"
  type: boolean
  inputBinding:
    prefix: -LBLong
- id: in_out
  doc: "the output file as alternative\nto stdout. [stdout]"
  type: File
  inputBinding:
    prefix: -out
- id: in_region
  doc: "genomic region\n(chr:99..[chr:]999). Index file is\nrecommended for better\
    \ performance, and is\nused automatically if it exists. See\n'bamtools help index'\
    \ for more details on\ncreating one"
  type: File
  inputBinding:
    prefix: -region
- id: in_fast_a
  doc: The contigs to be polished.
  type: File
  inputBinding:
    prefix: -fasta
- id: in_fq
  doc: "Output is in FASTQ, Default is\nFASTA format."
  type: boolean
  inputBinding:
    prefix: -fq
- id: in_base_q
  doc: "Assumed phred scaled base\nquality for fasta input. [30]"
  type: long
  inputBinding:
    prefix: -baseq
- id: in_min_q
  doc: "Minimum quality for a\ncorrection. [30]"
  type: long
  inputBinding:
    prefix: -minq
- id: in_min_mapq
  doc: "Minimum MAPQ for using a read\nin pileup. [2]"
  type: long
  inputBinding:
    prefix: -minMAPQ
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "the output file as alternative\nto stdout. [stdout]"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- novolrpolish
