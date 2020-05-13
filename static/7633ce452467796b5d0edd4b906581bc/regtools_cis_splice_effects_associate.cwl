class: CommandLineTool
id: regtools_cis_splice_effects_associate.cwl
inputs:
- id: variants_vcf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: junctions_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: re_ffa
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: annotations_gtf
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: o
  doc: Output file containing the aberrant splice junctions with annotations. [STDOUT]
  type: string
  inputBinding:
    prefix: -o
- id: v
  doc: Output file containing variants annotated as splice relevant (VCF format).
  type: string
  inputBinding:
    prefix: -v
- id: j
  doc: Output file containing the aberrant junctions in BED12 format.
  type: string
  inputBinding:
    prefix: -j
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
- id: w
  doc: Window size in b.p to identify splicing events in. The tool identifies events
    in variant.start +/- w basepairs. Default behaviour is to look at the window between
    previous and next exons.
  type: long
  inputBinding:
    prefix: -w
- id: e
  doc: Maximum distance from the start/end of an exon  to annotate a variant as relevant
    to splicing, the variant  is in exonic space, i.e a coding variant. [3]
  type: long
  inputBinding:
    prefix: -e
- id: i
  doc: Maximum distance from the start/end of an exon  to annotate a variant as relevant
    to splicing, the variant  is in intronic space. [2]
  type: long
  inputBinding:
    prefix: -i
- id: i
  doc: Annotate variants in intronic space within a transcript(not to be used with
    -i).
  type: boolean
  inputBinding:
    prefix: -I
- id: e
  doc: Annotate variants in exonic space within a transcript(not to be used with -e).
  type: boolean
  inputBinding:
    prefix: -E
- id: s
  doc: Don't skip single exon transcripts.
  type: boolean
  inputBinding:
    prefix: -S
outputs: []
cwlVersion: v1.1
baseCommand:
- regtools
- cis-splice-effects
- associate
