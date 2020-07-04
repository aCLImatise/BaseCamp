class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/spankijunc.cwl
inputs:
- id: bam_file_name
  doc: BAM file name
  type: string
  inputBinding:
    prefix: -i
- id: reference_gtf
  doc: Reference GTF
  type: string
  inputBinding:
    prefix: -g
- id: what_method_run
  doc: "What method to run: 'eval'  - Evaluates alignments, does not calculate IRT\
    \ 'quant' - Quantifies coverage and IRT, but not entropy and MMES 'all'   - Performs\
    \ all analyses (default)"
  type: string
  inputBinding:
    prefix: -m
- id: fasta_file_must
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
- id: output_directory_default
  doc: Output directory, default='junctions_out'
  type: string
  inputBinding:
    prefix: -o
- id: size_examine_repeats
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
