class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/regtools_junctions_extract.cwl
inputs:
- id: minimum_anchor_length
  doc: Minimum anchor length. Junctions which satisfy a minimum  anchor length on
    both sides are reported. [8]
  type: long
  inputBinding:
    prefix: -a
- id: minimum_intron_length
  doc: Minimum intron length. [70]
  type: long
  inputBinding:
    prefix: -m
- id: maximum_intron_length
  doc: Maximum intron length. [500000]
  type: long
  inputBinding:
    prefix: -M
- id: file_write_output
  doc: The file to write output to. [STDOUT]
  type: File
  inputBinding:
    prefix: -o
- id: region_identify_junctions
  doc: The region to identify junctions  in "chr:start-end" format. Entire BAM by
    default.
  type: string
  inputBinding:
    prefix: -r
- id: strand_specificity_rna
  doc: Strand specificity of RNA library preparation  (0 = unstranded, 1 = first-strand/RF,
    2, = second-strand/FR). REQUIRED
  type: long
  inputBinding:
    prefix: -s
- id: tag_used_label
  doc: Tag used in bam to label strand. [XS]
  type: string
  inputBinding:
    prefix: -t
- id: indexed_alignments_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- regtools
- junctions
- extract
