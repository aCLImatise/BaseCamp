class: CommandLineTool
id: spankijunc.cwl
inputs:
- id: i
  doc: BAM file name
  type: string
  inputBinding:
    prefix: -i
- id: g
  doc: Reference GTF
  type: string
  inputBinding:
    prefix: -g
- id: m
  doc: "What method to run: 'eval'  - Evaluates alignments, does not calculate IRT\
    \ 'quant' - Quantifies coverage and IRT, but not entropy and MMES 'all'   - Performs\
    \ all analyses (default)"
  type: string
  inputBinding:
    prefix: -m
- id: f
  doc: Fasta file Must have same chromosomes as BAM and GTF
  type: string
  inputBinding:
    prefix: -f
- id: filter
  doc: Filter junctions (T/F) T - Do not report unannotated junctions with ambiguous
    gene assignment or high exon-intron similarity F - Report all junctions (default)
  type: string
  inputBinding:
    prefix: -filter
- id: o
  doc: Output directory, default='junctions_out'
  type: string
  inputBinding:
    prefix: -o
- id: r
  doc: Size to examine for repeats (number of bases)
  type: string
  inputBinding:
    prefix: -r
- id: o_hang
  doc: Overhang applied to junction filtering and intron retention analysis (number
    of bases)
  type: string
  inputBinding:
    prefix: -ohang
outputs: []
cwlVersion: v1.1
baseCommand:
- spankijunc
