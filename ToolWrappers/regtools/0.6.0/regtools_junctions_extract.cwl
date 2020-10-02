class: CommandLineTool
id: regtools_junctions_extract.cwl
inputs:
- id: in_minimum_anchor_length
  doc: "Minimum anchor length. Junctions which satisfy a minimum\nanchor length on\
    \ both sides are reported. [8]"
  type: long
  inputBinding:
    prefix: -a
- id: in_minimum_intron_length
  doc: Minimum intron length. [70]
  type: long
  inputBinding:
    prefix: -m
- id: in_maximum_intron_length
  doc: Maximum intron length. [500000]
  type: long
  inputBinding:
    prefix: -M
- id: in_file_write_output
  doc: The file to write output to. [STDOUT]
  type: File
  inputBinding:
    prefix: -o
- id: in_region_identify_junctionsin
  doc: "The region to identify junctions\nin \"chr:start-end\" format. Entire BAM\
    \ by default."
  type: string
  inputBinding:
    prefix: -r
- id: in_strand_specificity_rna
  doc: "Strand specificity of RNA library preparation\n(0 = unstranded, 1 = first-strand/RF,\
    \ 2, = second-strand/FR). REQUIRED"
  type: long
  inputBinding:
    prefix: -s
- id: in_tag_used_label
  doc: Tag used in bam to label strand. [XS]
  type: string
  inputBinding:
    prefix: -t
- id: in_indexed_alignments_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_write_output
  doc: The file to write output to. [STDOUT]
  type: File
  outputBinding:
    glob: $(inputs.in_file_write_output)
cwlVersion: v1.1
baseCommand:
- regtools
- junctions
- extract
