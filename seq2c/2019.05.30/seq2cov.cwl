class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/seq2cov.pl.cwl
inputs:
- id: regular_expression_extract
  doc: The regular expression to extract sample name from bam filename
  type: string
  inputBinding:
    prefix: -n
- id: mutual_exclusive_set
  doc: Mutual exclusive to -n.  Set the sample name to name
  type: string
  inputBinding:
    prefix: -N
- id: indexed_bam_file
  doc: The indexed BAM file
  type: string
  inputBinding:
    prefix: -b
- id: the_column_chr
  doc: The column for chr
  type: string
  inputBinding:
    prefix: -c
- id: column_region_start
  doc: The column for region start, e.g. gene start
  type: string
  inputBinding:
    prefix: -S
- id: column_region_end
  doc: The column for region end, e.g. gene end
  type: string
  inputBinding:
    prefix: -E
- id: column_segment_starts
  doc: The column for segment starts in the region, e.g. exon starts
  type: string
  inputBinding:
    prefix: -s
- id: column_segment_ends
  doc: The column for segment ends in the region, e.g. exon ends
  type: string
  inputBinding:
    prefix: -e
- id: column_gene_name
  doc: The column for gene name
  type: string
  inputBinding:
    prefix: -g
- id: number_nucleotide_extend
  doc: 'The number of nucleotide to extend for each segment, default: 0'
  type: string
  inputBinding:
    prefix: -x
- id: indicate_default_based
  doc: Indicate whether it's zero based numbering, default is 1-based
  type: boolean
  inputBinding:
    prefix: -z
outputs: []
cwlVersion: v1.1
baseCommand:
- seq2cov.pl
