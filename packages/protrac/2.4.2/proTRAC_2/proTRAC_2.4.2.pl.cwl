class: CommandLineTool
id: proTRAC_2.4.2.pl.cwl
inputs:
- id: in_genome
  doc: "[file]    Name of the file that contains the genomic sequence\nand that was\
    \ used for mapping the sequence reads."
  type: File
  inputBinding:
    prefix: -genome
- id: in_map
  doc: "[file]       Name of the file that contains mapped reads in SAM\nor ELAND3\
    \ format. We recommend to use SeqMap with\noption /output_all_matches or sRNAmapper\
    \ with default\nsettings to create an appropriate file. When using a\nmore popular\
    \ mapper you should make sure to allow for\nmulti-mapping."
  type: File
  inputBinding:
    prefix: -map
- id: in_format
  doc: "[s]       Specify the input format. Allowed values are SAM and\nELAND3. This\
    \ is only required if the input file\ncontains less than 1000 hits."
  type: File
  inputBinding:
    prefix: -format
- id: in_repeatmasker
  doc: "[file]    Name of the file that contains the RepeatMasker\nannotation. Make\
    \ sure that the names for the\nchromosomes/scaffolds are identical in your Repeat-\n\
    Masker and genome file."
  type: boolean
  inputBinding:
    prefix: -repeatmasker
- id: in_gene_set
  doc: "[file]         Name of the file that contains gene annotation (GTF-\nfile\
    \ from Ensembl database). Make sure that the names\nfor the chromosomes/scaffolds\
    \ are identical in your\nGTF- and genome file."
  type: boolean
  inputBinding:
    prefix: -geneset
- id: in_sw_size
  doc: '[int]           Size of the sliding window (default=5000)'
  type: boolean
  inputBinding:
    prefix: -swsize
- id: in_sw_incr
  doc: '[int]           Increment of the sliding window (default=1000)'
  type: boolean
  inputBinding:
    prefix: -swincr
- id: in_no_hc
  doc: "Do not consider total number of genomic hits for the\nsequence in question\
    \ for calculation of hit counts."
  type: boolean
  inputBinding:
    prefix: -nohc
- id: in_norc
  doc: "Do not consider number of reads for the sequence in\nquestion for calculation\
    \ of hit counts."
  type: boolean
  inputBinding:
    prefix: -norc
- id: in_nor_pm
  doc: "Do not normalize the hit count with the total number\nof mapped sequence reads\
    \ (reads per million).\nNormalization will make the values comparable accross\n\
    different piRNA libraries and/or organisms."
  type: boolean
  inputBinding:
    prefix: -norpm
- id: in_dens
  doc: "[fpt]             Define an absolute minimum number of (normalized)\nread\
    \ counts per kb."
  type: boolean
  inputBinding:
    prefix: -dens
- id: in_p_dens
  doc: "[0..1]           Define a p-value for minimum number of (normalized)\nread\
    \ counts per kb. A p-value of 0.01 means that the\n(normalized) read count value\
    \ in a sliding window must\nbelong to the top 1% of all sliding windows."
  type: boolean
  inputBinding:
    prefix: -pdens
- id: in_est
  doc: "[int]              Use that option together with -pdens. Estimate the\nrequired\
    \ minimum number of (normalized) read counts\nin a sliding windows based on n\
    \ random 1kb sliding\nwindows (faster). Without that option proTRAC will\nscan\
    \ the map file and calculate the required minimum\nnumber of (normalized) read\
    \ counts in a sliding\nwindow based on the observed distribution."
  type: boolean
  inputBinding:
    prefix: -est
- id: in_pi_size
  doc: "[0..1]          Fraction of (normalized) read counts that have\nthe typical\
    \ piRNA size (default=0.75)."
  type: boolean
  inputBinding:
    prefix: -pisize
- id: in_pim_in
  doc: '[int]            Define the minimum length of a piRNA (default=24).'
  type: boolean
  inputBinding:
    prefix: -pimin
- id: in_pi_max
  doc: '[int]            Define the maximum length of a piRNA (default=32).'
  type: boolean
  inputBinding:
    prefix: -pimax
- id: in_one_tor_one_zero_a
  doc: "[0..1]         Fraction of (normalized) read counts that have 1T\n(1U) or\
    \ 10A (default=0.75)."
  type: boolean
  inputBinding:
    prefix: -1Tor10A
- id: in_on_et_and_one_zero_a
  doc: "[0..1]        If the fraction of (normalized) read counts with 1T\n(1U) OR\
    \ 10A is below the value defined by -1Tor10A,\naccept the sliding window if BOTH\
    \ the 1T (1U) and the\n10A fraction reach this value (default=0.5)."
  type: boolean
  inputBinding:
    prefix: -1Tand10A
- id: in_distr
  doc: "[ftp-ftp]        To avoid false positive piRNA cluster annotation of\nloci\
    \ with one or few mapped sequences represented by\nexceptionally many reads. You\
    \ can e.g. type\n'-distr 10-75' which means that the TOP 10% of\nmapped sequences\
    \ account for max. 75% of the piRNA\nclusters (normalized) read counts. Otherwise\
    \ the\nlocus is rejected."
  type: boolean
  inputBinding:
    prefix: -distr
- id: in_cl_size
  doc: "[int]           Set the minimum size for a piRNA cluster (default=\n1000)."
  type: boolean
  inputBinding:
    prefix: -clsize
- id: in_cl_hits
  doc: "[int]           Minimum number of sequence hit loci per piRNA cluster\n(default=0)."
  type: boolean
  inputBinding:
    prefix: -clhits
- id: in_cl_hits_n
  doc: "[ftp]          Minimum number of normalized sequence read counts per\npiRNA\
    \ cluster (default=0)."
  type: boolean
  inputBinding:
    prefix: -clhitsn
- id: in_cl_strand
  doc: "[0..1]        Fraction of (normalized) read counts that map to the\nmain strand\
    \ (default=0.75)."
  type: boolean
  inputBinding:
    prefix: -clstrand
- id: in_cl_split
  doc: "[0..1]         Minimum fraction of (normalized) read counts on the\nsmaller\
    \ arm of a bi-directional piRNA cluster.\nOtherwise the cluster will be annotated\
    \ as\nmono-directional (default=0.1)."
  type: boolean
  inputBinding:
    prefix: -clsplit
- id: in_no_html
  doc: Do not output .html files for each piRNA cluster.
  type: boolean
  inputBinding:
    prefix: -nohtml
- id: in_notable
  doc: Do not output a summary table.
  type: boolean
  inputBinding:
    prefix: -notable
- id: in_nofa_spi
  doc: "Do not output a FASTA file comprising mapped piRNAs\nfor each cluster."
  type: File
  inputBinding:
    prefix: -nofaspi
- id: in_nofa_scl
  doc: "Do not output a FASTA file comprising all piRNA\ncluster sequences."
  type: File
  inputBinding:
    prefix: -nofascl
- id: in_no_gtf
  doc: Do not output a GTF file for predicted piRNA
  type: File
  inputBinding:
    prefix: -nogtf
- id: in_pti
  doc: "Output a file that contains information on mapped\nsequence reads in a tab-delimited\
    \ table that\ncomprises sequence, reads, genomic hits e.g:\nTGGGCACGCAAATTCGAGTATCG\
    \   12   4\n"
  type: File
  inputBinding:
    prefix: -pti
- id: in_option
  doc: ''
  type: string
  inputBinding:
    prefix: -option
- id: in_ftp
  doc: = floating point number
  type: string
  inputBinding:
    position: 0
- id: in_int
  doc: = integer
  type: long
  inputBinding:
    position: 1
- id: in_clusters_dot
  doc: -nomotif                Do not search for transcription factor binding
  type: string
  inputBinding:
    position: 0
- id: in_sites_dot
  doc: -flank [int]            Include n bp of flanking sequence in output files.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_nofa_spi
  doc: "Do not output a FASTA file comprising mapped piRNAs\nfor each cluster."
  type: File
  outputBinding:
    glob: $(inputs.in_nofa_spi)
- id: out_nofa_scl
  doc: "Do not output a FASTA file comprising all piRNA\ncluster sequences."
  type: File
  outputBinding:
    glob: $(inputs.in_nofa_scl)
- id: out_no_gtf
  doc: Do not output a GTF file for predicted piRNA
  type: File
  outputBinding:
    glob: $(inputs.in_no_gtf)
- id: out_pti
  doc: "Output a file that contains information on mapped\nsequence reads in a tab-delimited\
    \ table that\ncomprises sequence, reads, genomic hits e.g:\nTGGGCACGCAAATTCGAGTATCG\
    \   12   4\n"
  type: File
  outputBinding:
    glob: $(inputs.in_pti)
cwlVersion: v1.1
baseCommand:
- proTRAC_2.4.2.pl
