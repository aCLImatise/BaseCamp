class: CommandLineTool
id: annotateBed_2way.pl.cwl
inputs:
- id: in_an_no
  doc: ": genomic features' bed files, which are used to annotate input bed files,\
    \ allow multiple files"
  type: File
  inputBinding:
    prefix: --anno
- id: in_genome
  doc: ': genome fasta index file, used to generate random number in each of the chromosome'
  type: File
  inputBinding:
    prefix: --genome
- id: in_upstream
  doc: ':  how many bp upstream from  align start position (Default: 0)'
  type: long
  inputBinding:
    prefix: --upstream
- id: in_downstream
  doc: ':   how many bp downstream from  align start position (Default: 0)'
  type: long
  inputBinding:
    prefix: --downstream
- id: in_overlap_only
  doc: ': only genomic feature overlapped with .bed region will be taken into account'
  type: boolean
  inputBinding:
    prefix: --overlap_only
- id: in_overlap_percentage
  doc: ':  minimum percentage of .bed regions overlapped with genomic features will
    be taken into account (Default: 0)'
  type: long
  inputBinding:
    prefix: --overlap_percentage
- id: in_same_strand
  doc: ': Require same strandedness.  That is, only counts overlaps on the _same_
    strand (Default: both strand).'
  type: boolean
  inputBinding:
    prefix: --same_strand
- id: in_reverse_strand
  doc: ': Require different strandedness.  That is, only count overlaps on the _opposite_
    strand (Default: both strand).'
  type: boolean
  inputBinding:
    prefix: --reverse_strand
- id: in_bed_tools_path
  doc: ': path to BEDtools/bin/.if not specified in PATH environment variable'
  type: boolean
  inputBinding:
    prefix: --bedtools_path
- id: in_align_start
  doc: ": (Default: --align_start 1)\n1) extend upstream, downstream from both of\
    \ 5', 3' border\n2) extend upstream, downstream from 5' border\n3) extend upstream,\
    \ downstream from 3' border\n4) extend upstream, downstream from center of .bed\
    \ region\n"
  type: long
  inputBinding:
    prefix: --align_start
- id: in_bed_slash_gff_file
  doc: Input bed/gff file which requires the annotation.
  type: string
  inputBinding:
    position: 0
- id: in_summary_file_dot_txt
  doc: Summary statistics about annotation result.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- annotateBed_2way.pl
