class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/regtools_cis_splice_effects_associate.cwl
inputs:
- id: output_file_containing_aberrant_splice_junctions
  doc: Output file containing the aberrant splice junctions with annotations. [STDOUT]
  type: string
  inputBinding:
    prefix: -o
- id: output_file_containing_variants
  doc: Output file containing variants annotated as splice relevant (VCF format).
  type: string
  inputBinding:
    prefix: -v
- id: output_file_containing_aberrant_junctions_bed
  doc: Output file containing the aberrant junctions in BED12 format.
  type: string
  inputBinding:
    prefix: -j
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
- id: window_size_identify
  doc: Window size in b.p to identify splicing events in. The tool identifies events
    in variant.start +/- w basepairs. Default behaviour is to look at the window between
    previous and next exons.
  type: long
  inputBinding:
    prefix: -w
- id: maximum_distance_exonic
  doc: Maximum distance from the start/end of an exon  to annotate a variant as relevant
    to splicing, the variant  is in exonic space, i.e a coding variant. [3]
  type: long
  inputBinding:
    prefix: -e
- id: maximum_distance_intronic
  doc: Maximum distance from the start/end of an exon  to annotate a variant as relevant
    to splicing, the variant  is in intronic space. [2]
  type: long
  inputBinding:
    prefix: -i
- id: annotate_variants_intronic
  doc: Annotate variants in intronic space within a transcript(not to be used with
    -i).
  type: boolean
  inputBinding:
    prefix: -I
- id: annotate_variants_exonic
  doc: Annotate variants in exonic space within a transcript(not to be used with -e).
  type: boolean
  inputBinding:
    prefix: -E
- id: skip_single_transcripts
  doc: Don't skip single exon transcripts.
  type: boolean
  inputBinding:
    prefix: -S
- id: variants_dot_vcf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: junctions_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: annotations_dot_gtf
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- regtools
- cis-splice-effects
- associate
