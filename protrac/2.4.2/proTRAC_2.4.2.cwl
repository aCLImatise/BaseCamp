class: CommandLineTool
id: proTRAC_2.4.2.pl.cwl
inputs:
- id: distr
  doc: "[ftp-ftp]        To avoid false positive piRNA cluster annotation of loci\
    \ with one or few mapped sequences represented by exceptionally many reads. You\
    \ can e.g. type '-distr 10-75' which means that the TOP 10% of mapped sequences\
    \ account for max. 75% of the piRNA clusters (normalized) read counts. Otherwise\
    \ the locus is rejected."
  type: boolean
  inputBinding:
    prefix: -distr
- id: cl_size
  doc: '[int]           Set the minimum size for a piRNA cluster (default= 1000).'
  type: boolean
  inputBinding:
    prefix: -clsize
- id: cl_hits
  doc: '[int]           Minimum number of sequence hit loci per piRNA cluster (default=0).'
  type: boolean
  inputBinding:
    prefix: -clhits
- id: cl_hits_n
  doc: '[ftp]          Minimum number of normalized sequence read counts per piRNA
    cluster (default=0).'
  type: boolean
  inputBinding:
    prefix: -clhitsn
- id: cl_strand
  doc: '[0..1]        Fraction of (normalized) read counts that map to the main strand
    (default=0.75).'
  type: boolean
  inputBinding:
    prefix: -clstrand
- id: cl_split
  doc: '[0..1]         Minimum fraction of (normalized) read counts on the smaller
    arm of a bi-directional piRNA cluster. Otherwise the cluster will be annotated
    as mono-directional (default=0.1).'
  type: boolean
  inputBinding:
    prefix: -clsplit
- id: no_html
  doc: Do not output .html files for each piRNA cluster.
  type: boolean
  inputBinding:
    prefix: -nohtml
- id: notable
  doc: Do not output a summary table.
  type: boolean
  inputBinding:
    prefix: -notable
- id: nofa_spi
  doc: Do not output a FASTA file comprising mapped piRNAs for each cluster.
  type: boolean
  inputBinding:
    prefix: -nofaspi
- id: nofa_scl
  doc: Do not output a FASTA file comprising all piRNA cluster sequences.
  type: boolean
  inputBinding:
    prefix: -nofascl
- id: no_gtf
  doc: Do not output a GTF file for predicted piRNA clusters.
  type: boolean
  inputBinding:
    prefix: -nogtf
- id: no_motif
  doc: Do not search for transcription factor binding sites.
  type: boolean
  inputBinding:
    prefix: -nomotif
- id: flank
  doc: '[int]            Include n bp of flanking sequence in output files.'
  type: boolean
  inputBinding:
    prefix: -flank
- id: pti
  doc: 'Output a file that contains information on mapped sequence reads in a tab-delimited
    table that comprises sequence, reads, genomic hits e.g: TGGGCACGCAAATTCGAGTATCG   12   4'
  type: boolean
  inputBinding:
    prefix: -pti
outputs: []
cwlVersion: v1.1
baseCommand:
- proTRAC_2.4.2.pl
