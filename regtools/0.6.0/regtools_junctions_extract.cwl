class: CommandLineTool
id: regtools_junctions_extract.cwl
inputs:
- id: indexed_alignments_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: a
  doc: Minimum anchor length. Junctions which satisfy a minimum  anchor length on
    both sides are reported. [8]
  type: long
  inputBinding:
    prefix: -a
- id: m
  doc: Minimum intron length. [70]
  type: long
  inputBinding:
    prefix: -m
- id: m
  doc: Maximum intron length. [500000]
  type: long
  inputBinding:
    prefix: -M
- id: o
  doc: The file to write output to. [STDOUT]
  type: File
  inputBinding:
    prefix: -o
- id: r
  doc: The region to identify junctions  in "chr:start-end" format. Entire BAM by
    default.
  type: string
  inputBinding:
    prefix: -r
- id: s
  doc: Strand specificity of RNA library preparation  (0 = unstranded, 1 = first-strand/RF,
    2, = second-strand/FR). REQUIRED
  type: long
  inputBinding:
    prefix: -s
- id: t
  doc: Tag used in bam to label strand. [XS]
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- regtools
- junctions
- extract
