class: CommandLineTool
id: ../../../proTRAC_2.4.2.pl.cwl
inputs:
- id: genome
  doc: '[file]    Name of the file that contains the genomic sequence and that was
    used for mapping the sequence reads.'
  type: string
  inputBinding:
    prefix: -genome
- id: map
  doc: '[file]       Name of the file that contains mapped reads in SAM or ELAND3
    format. We recommend to use SeqMap with option /output_all_matches or sRNAmapper
    with default settings to create an appropriate file. When using a more popular
    mapper you should make sure to allow for multi-mapping.'
  type: string
  inputBinding:
    prefix: -map
- id: format
  doc: '[s]       Specify the input format. Allowed values are SAM and ELAND3. This
    is only required if the input file contains less than 1000 hits.'
  type: string
  inputBinding:
    prefix: -format
- id: repeatmasker
  doc: '[file]    Name of the file that contains the RepeatMasker annotation. Make
    sure that the names for the chromosomes/scaffolds are identical in your Repeat-
    Masker and genome file.'
  type: boolean
  inputBinding:
    prefix: -repeatmasker
- id: gene_set
  doc: '[file]         Name of the file that contains gene annotation (GTF- file from
    Ensembl database). Make sure that the names for the chromosomes/scaffolds are
    identical in your GTF- and genome file.'
  type: boolean
  inputBinding:
    prefix: -geneset
- id: sw_size
  doc: '[int]           Size of the sliding window (default=5000)'
  type: boolean
  inputBinding:
    prefix: -swsize
- id: sw_incr
  doc: '[int]           Increment of the sliding window (default=1000)'
  type: boolean
  inputBinding:
    prefix: -swincr
- id: no_hc
  doc: Do not consider total number of genomic hits for the sequence in question for
    calculation of hit counts.
  type: boolean
  inputBinding:
    prefix: -nohc
- id: norc
  doc: Do not consider number of reads for the sequence in question for calculation
    of hit counts.
  type: boolean
  inputBinding:
    prefix: -norc
- id: nor_pm
  doc: Do not normalize the hit count with the total number of mapped sequence reads
    (reads per million). Normalization will make the values comparable accross different
    piRNA libraries and/or organisms.
  type: boolean
  inputBinding:
    prefix: -norpm
- id: dens
  doc: '[fpt]             Define an absolute minimum number of (normalized)  read
    counts per kb.'
  type: boolean
  inputBinding:
    prefix: -dens
- id: p_dens
  doc: '[0..1]           Define a p-value for minimum number of (normalized) read
    counts per kb. A p-value of 0.01 means that the (normalized) read count value
    in a sliding window must belong to the top 1% of all sliding windows.'
  type: boolean
  inputBinding:
    prefix: -pdens
- id: est
  doc: '[int]              Use that option together with -pdens. Estimate the  required
    minimum number of (normalized) read counts in a sliding windows based on n random
    1kb sliding windows (faster). Without that option proTRAC will scan the map file
    and calculate the required minimum number of (normalized) read counts in a sliding
    window based on the observed distribution.'
  type: boolean
  inputBinding:
    prefix: -est
- id: pi_size
  doc: '[0..1]          Fraction of (normalized) read counts that have the typical
    piRNA size (default=0.75).'
  type: boolean
  inputBinding:
    prefix: -pisize
- id: pim_in
  doc: '[int]            Define the minimum length of a piRNA (default=24).'
  type: boolean
  inputBinding:
    prefix: -pimin
- id: pi_max
  doc: '[int]            Define the maximum length of a piRNA (default=32).'
  type: boolean
  inputBinding:
    prefix: -pimax
- id: one_tor_one_zero_a
  doc: '[0..1]         Fraction of (normalized) read counts that have 1T (1U) or 10A
    (default=0.75).'
  type: boolean
  inputBinding:
    prefix: -1Tor10A
- id: on_et_and_one_zero_a
  doc: '[0..1]        If the fraction of (normalized) read counts with 1T (1U) OR
    10A is below the value defined by -1Tor10A, accept the sliding window if BOTH
    the 1T (1U) and the 10A fraction reach this value (default=0.5).'
  type: boolean
  inputBinding:
    prefix: -1Tand10A
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
- id: option
  doc: ''
  type: string
  inputBinding:
    prefix: -option
outputs: []
cwlVersion: v1.1
baseCommand:
- proTRAC_2.4.2.pl
