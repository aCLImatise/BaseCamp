class: CommandLineTool
id: telseq.cwl
inputs:
- id: bam_list
  doc: a file that contains a list of file paths of BAMs. It should has only one column,  with
    each row a BAM file path. -f has higher priority than <in.bam>. When specified,  <in.bam>
    are ignored.
  type: string
  inputBinding:
    prefix: --bamlist
- id: output_dir
  doc: 'output file for results. Ignored when input is from stdin, in which case output
    will be stdout. '
  type: string
  inputBinding:
    prefix: --output_dir
- id: h
  doc: remove header line, which is printed by default.
  type: boolean
  inputBinding:
    prefix: -H
- id: m
  doc: merge read groups by taking a weighted average across read groups of a sample,
    weighted by  the total number of reads in read group. Default is to output each
    readgroup separately.
  type: boolean
  inputBinding:
    prefix: -m
- id: u
  doc: ignore read groups. Treat all reads in BAM as if they were from a same read
    group.
  type: boolean
  inputBinding:
    prefix: -u
- id: k
  doc: threshold of the amount of TTAGGG/CCCTAA repeats in read for a read to be considered
    telomeric. default = 7.
  type: boolean
  inputBinding:
    prefix: -k
- id: r
  doc: read length. default = 100
  type: boolean
  inputBinding:
    prefix: -r
- id: z
  doc: use user specified pattern for searching [ATGC]*.
  type: boolean
  inputBinding:
    prefix: -z
- id: exo_me_bed
  doc: 'specifiy exome regions in BED format. These regions will be excluded '
  type: string
  inputBinding:
    prefix: --exomebed
- id: w
  doc: ',                      consider BAMs in the speicfied bamlist as one single
    BAM. This is useful when  the initial alignemt is separated for some reason, such
    as one for mapped and one for ummapped reads. '
  type: boolean
  inputBinding:
    prefix: -w
outputs: []
cwlVersion: v1.1
baseCommand:
- telseq
