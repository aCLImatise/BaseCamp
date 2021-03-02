class: CommandLineTool
id: seq2cov.pl.cwl
inputs:
- id: in_this_help
  doc: this help
  type: string?
  inputBinding:
    prefix: -h
- id: in_floatindicate_amplicon_based
  doc: ":float\nIndicate that it's PCR amplicon based calling.  Each line in region_info\
    \ represents a PCR amplicon (including primers).\nTwo numbers in option are parameter\
    \ to decide whether a particular read or pairs belongs to the amplicon. First\
    \ is the\nnumber of base pairs.  The second is the fraction of overlapped portion\
    \ to the length of read or pairs.  If the edges of\nreads (paired for Illumina)\
    \ are within defined base pairs to the edges of amplicons and overlapped portion\
    \ greater then\nthe fraction, it's considered belonging to the amplicon.  Suggested\
    \ values are: 10:0.95.  When given a 6 column amplicon\nformat BED files, it'll\
    \ be set to 10:0.95 automatically, but can still be overwritten by -a option."
  type: long?
  inputBinding:
    prefix: -a
- id: in_regular_expression_extract
  doc: The regular expression to extract sample name from bam filename
  type: File?
  inputBinding:
    prefix: -n
- id: in_mutual_exclusive_set
  doc: Mutual exclusive to -n.  Set the sample name to name
  type: string?
  inputBinding:
    prefix: -N
- id: in_indexed_bam_file
  doc: The indexed BAM file
  type: File?
  inputBinding:
    prefix: -b
- id: in_the_column_chr
  doc: The column for chr
  type: string?
  inputBinding:
    prefix: -c
- id: in_column_region_start
  doc: The column for region start, e.g. gene start
  type: string?
  inputBinding:
    prefix: -S
- id: in_column_region_end
  doc: The column for region end, e.g. gene end
  type: string?
  inputBinding:
    prefix: -E
- id: in_column_segment_starts
  doc: The column for segment starts in the region, e.g. exon starts
  type: string?
  inputBinding:
    prefix: -s
- id: in_column_segment_ends
  doc: The column for segment ends in the region, e.g. exon ends
  type: string?
  inputBinding:
    prefix: -e
- id: in_column_gene_name
  doc: The column for gene name
  type: string?
  inputBinding:
    prefix: -g
- id: in_number_nucleotide_extend
  doc: 'The number of nucleotide to extend for each segment, default: 0'
  type: long?
  inputBinding:
    prefix: -x
- id: in_indicate_its_based
  doc: Indicate whether it's zero based numbering, default is 1-based
  type: boolean?
  inputBinding:
    prefix: -z
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- seq2cov.pl
