class: CommandLineTool
id: telseq.cwl
inputs:
- id: in_bam_list
  doc: "a file that contains a list of file paths of BAMs. It should has only one\
    \ column,\nwith each row a BAM file path. -f has higher priority than <in.bam>.\
    \ When specified,\n<in.bam> are ignored."
  type: File?
  inputBinding:
    prefix: --bamlist
- id: in_output_dir
  doc: output file for results. Ignored when input is from stdin, in which case output
    will be stdout.
  type: File?
  inputBinding:
    prefix: --output_dir
- id: in_remove_header_line
  doc: remove header line, which is printed by default.
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_merge_read_groups
  doc: "merge read groups by taking a weighted average across read groups of a sample,\
    \ weighted by\nthe total number of reads in read group. Default is to output each\
    \ readgroup separately."
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_read_groups_treat
  doc: ignore read groups. Treat all reads in BAM as if they were from a same read
    group.
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_threshold_amount_ttagggccctaa
  doc: threshold of the amount of TTAGGG/CCCTAA repeats in read for a read to be considered
    telomeric. default = 7.
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_read_length_default
  doc: read length. default = 100
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_use_user_specified
  doc: use user specified pattern for searching [ATGC]*.
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_exo_me_bed
  doc: specifiy exome regions in BED format. These regions will be excluded
  type: string?
  inputBinding:
    prefix: --exomebed
- id: in_consider_bams_is
  doc: ",                      consider BAMs in the speicfied bamlist as one single\
    \ BAM. This is useful when\nthe initial alignemt is separated for some reason,\
    \ such as one for mapped and one for ummapped reads."
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_in_dot_one_dot_bam
  doc: ''
  type: double
  inputBinding:
    position: 0
- id: in_in_dot_two_dot_bam
  doc: ''
  type: double
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- telseq
