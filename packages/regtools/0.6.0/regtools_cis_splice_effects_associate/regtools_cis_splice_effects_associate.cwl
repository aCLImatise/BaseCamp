class: CommandLineTool
id: regtools_cis_splice_effects_associate.cwl
inputs:
- id: in_output_file_containing_aberrant_splice_junctions
  doc: Output file containing the aberrant splice junctions with annotations. [STDOUT]
  type: File
  inputBinding:
    prefix: -o
- id: in_output_file_containing_variants
  doc: Output file containing variants annotated as splice relevant (VCF format).
  type: File
  inputBinding:
    prefix: -v
- id: in_output_file_containing_aberrant_junctions_bed
  doc: Output file containing the aberrant junctions in BED12 format.
  type: File
  inputBinding:
    prefix: -j
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
- id: in_window_size_identify
  doc: "Window size in b.p to identify splicing events in.\nThe tool identifies events\
    \ in variant.start +/- w basepairs.\nDefault behaviour is to look at the window\
    \ between previous and next exons."
  type: long
  inputBinding:
    prefix: -w
- id: in_maximum_distance_exonic
  doc: "Maximum distance from the start/end of an exon\nto annotate a variant as relevant\
    \ to splicing, the variant\nis in exonic space, i.e a coding variant. [3]"
  type: long
  inputBinding:
    prefix: -e
- id: in_maximum_distance_intronic
  doc: "Maximum distance from the start/end of an exon\nto annotate a variant as relevant\
    \ to splicing, the variant\nis in intronic space. [2]"
  type: long
  inputBinding:
    prefix: -i
- id: in_annotate_variants_intronic
  doc: Annotate variants in intronic space within a transcript(not to be used with
    -i).
  type: boolean
  inputBinding:
    prefix: -I
- id: in_annotate_variants_used
  doc: Annotate variants in exonic space within a transcript(not to be used with -e).
  type: boolean
  inputBinding:
    prefix: -E
- id: in_skip_single_transcripts
  doc: Don't skip single exon transcripts.
  type: boolean
  inputBinding:
    prefix: -S
- id: in_variants_dot_vcf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_junctions_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_annotations_dot_gtf
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_containing_aberrant_splice_junctions
  doc: Output file containing the aberrant splice junctions with annotations. [STDOUT]
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_containing_aberrant_splice_junctions)
- id: out_output_file_containing_variants
  doc: Output file containing variants annotated as splice relevant (VCF format).
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_containing_variants)
- id: out_output_file_containing_aberrant_junctions_bed
  doc: Output file containing the aberrant junctions in BED12 format.
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_containing_aberrant_junctions_bed)
cwlVersion: v1.1
baseCommand:
- regtools
- cis-splice-effects
- associate
