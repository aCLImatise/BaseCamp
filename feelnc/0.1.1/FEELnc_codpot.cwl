class: CommandLineTool
id: FEELnc_codpot.pl.cwl
inputs:
- id: man
  doc: Open man page
  type: boolean
  inputBinding:
    prefix: --man
- id: verbosity
  doc: Level of verbosity
  type: boolean
  inputBinding:
    prefix: --verbosity
- id: in_file
  doc: /.fasta           Specify the .GTF or .FASTA file  (such as a cufflinks transcripts/merged
    .GTF or .FASTA file)
  type: File
  inputBinding:
    prefix: --infile
- id: mrna_file
  doc: /.fasta         Specify the annotation .GTF or .FASTA file  (file of protein
    coding transcripts .GTF or .FASTA file)
  type: File
  inputBinding:
    prefix: --mRNAfile
- id: genome
  doc: Genome file or directory with chr files (mandatory if input is .GTF) [ default
    undef ]
  type: string
  inputBinding:
    prefix: --genome
- id: l_ncrna_file
  doc: /.fasta       Specify a known set of lncRNA for training .GTF or .FASTA  [
    default undef ]
  type: File
  inputBinding:
    prefix: --lncRNAfile
- id: biotype
  doc: 'Only consider transcripts having this(these) biotype(s) from the reference
    annotation (e.g : -b transcript_biotype=protein_coding,pseudogene) [default undef
    i.e all transcripts]'
  type: boolean
  inputBinding:
    prefix: --biotype
- id: num_tx
  doc: "Number of mRNA and lncRNA transcripts required for the training. mRNAs and\
    \ lncRNAs numbers need to be separate by a ',': i.e. 1500,1000 for 1500 mRNAs\
    \ and 1000 lncRNAs. For all the annotation, let it blank [ default undef, all\
    \ the two annotations ]"
  type: string
  inputBinding:
    prefix: --numtx
- id: rf_cut
  doc: =[0-1]                      Random forest voting cutoff [ default undef i.e
    will compute best cutoff ]
  type: boolean
  inputBinding:
    prefix: --rfcut
- id: speth_res
  doc: Two specificity threshold based on the 10-fold cross-validation, first one
    for mRNA and the second for lncRNA, need to be in ]0,1[ on separated by a ','
  type: string
  inputBinding:
    prefix: --spethres
- id: km_er
  doc: =1,2,3,6,9,12                Kmer size list with size separate by ',' as string
    [ default "1,2,3,6,9,12" ], the maximum value for one size is '15'
  type: boolean
  inputBinding:
    prefix: --kmer
- id: out_name
  doc: Output filename [ default infile_name ]
  type: string
  inputBinding:
    prefix: --outname
- id: outdir
  doc: ="feelnc_codpot_out/"         Output directory [ default "./feelnc_codpot_out/"
    ]
  type: boolean
  inputBinding:
    prefix: --outdir
- id: mode
  doc: "The mode of the lncRNA sequences simulation if no lncRNA sequences have been\
    \ provided. The mode can be: 'shuffle'   : make a permutation of mRNA sequences\
    \ while preserving the 7mer count. Can be done on either FASTA and GTF input file;\
    \ 'intergenic': extract intergenic sequences. Can be done *only* on GTF input\
    \ file."
  type: boolean
  inputBinding:
    prefix: --mode
- id: size_inter
  doc: =0.75                   Ratio between mRNA sequence lengths and non coding
    intergenic region sequence lengths as, by default, ncInter = mRNA * 0.75
  type: boolean
  inputBinding:
    prefix: --sizeinter
- id: learn_orf_type
  doc: "=3                      Integer [0,1,2,3,4] to specify the type of longest\
    \ ORF calculate [ default: 3 ] for learning data set. If the CDS is annotated\
    \ in the .GTF, then the CDS is considered as the longest ORF, whatever the --orftype\
    \ value. '0': ORF with start and stop codon; '1': same as '0' and ORF with only\
    \ a start codon, take the longest; '2': same as '1' but with a stop codon; '3':\
    \ same as '0' and ORF with a start or a stop, take the longest (see '1' and '2');\
    \ '4': same as '3' but if no ORF is found, take the input sequence as ORF."
  type: boolean
  inputBinding:
    prefix: --learnorftype
- id: test_orf_type
  doc: '=3                       Integer [0,1,2,3,4] to specify the type of longest
    ORF calculate [ default: 3 ] for test data set. See --learnortype description
    for more informations.'
  type: boolean
  inputBinding:
    prefix: --testorftype
- id: n_tree
  doc: Number of trees used in random forest [ default 500 ]
  type: boolean
  inputBinding:
    prefix: --ntree
- id: percentage
  doc: =0.1                      Percentage of the training file use for the training
    of the kmer model. What remains will be used to train the random forest
  type: boolean
  inputBinding:
    prefix: --percentage
- id: keep_tmp
  doc: =0                           To keep the temporary files in a 'tmp' directory
    the outdir, by default don't keep it (0 value). Any other value than 0 will keep
    the temporary files
  type: boolean
  inputBinding:
    prefix: --keeptmp
- id: verbosity
  doc: '=1                         Integer [0,1,2]: which level of information that
    need to be print [ default 1 ]. Note that that printing is made on STDERR'
  type: boolean
  inputBinding:
    prefix: --verbosity
- id: seed
  doc: =1234                           Use to fixe the seed value for the extraction
    of intergenic DNA region to get lncRNA like sequences and for the random forest
    [ default 1234 ]
  type: boolean
  inputBinding:
    prefix: --seed
- id: to
  doc: added
  type: string
  inputBinding:
    prefix: -to
outputs: []
cwlVersion: v1.1
baseCommand:
- FEELnc_codpot.pl
