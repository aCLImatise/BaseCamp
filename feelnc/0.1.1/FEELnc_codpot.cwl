#!/usr/bin/env cwl-runner

baseCommand:
- FEELnc_codpot.pl
class: CommandLineTool
cwlVersion: v1.0
id: feelnc_codpot.pl
inputs:
- doc: Open man page
  id: man
  inputBinding:
    prefix: --man
  type: boolean
- doc: Level of verbosity
  id: verbosity
  inputBinding:
    prefix: --verbosity
  type: boolean
- doc: /.fasta           Specify the .GTF or .FASTA file  (such as a cufflinks transcripts/merged
    .GTF or .FASTA file)
  id: in_file
  inputBinding:
    prefix: --infile
  type: File
- doc: /.fasta         Specify the annotation .GTF or .FASTA file  (file of protein
    coding transcripts .GTF or .FASTA file)
  id: mrna_file
  inputBinding:
    prefix: --mRNAfile
  type: File
- doc: Genome file or directory with chr files (mandatory if input is .GTF) [ default
    undef ]
  id: genome
  inputBinding:
    prefix: --genome
  type: string
- doc: /.fasta       Specify a known set of lncRNA for training .GTF or .FASTA  [
    default undef ]
  id: l_ncrna_file
  inputBinding:
    prefix: --lncRNAfile
  type: File
- doc: 'Only consider transcripts having this(these) biotype(s) from the reference
    annotation (e.g : -b transcript_biotype=protein_coding,pseudogene) [default undef
    i.e all transcripts]'
  id: biotype
  inputBinding:
    prefix: --biotype
  type: boolean
- doc: "Number of mRNA and lncRNA transcripts required for the training. mRNAs and\
    \ lncRNAs numbers need to be separate by a ',': i.e. 1500,1000 for 1500 mRNAs\
    \ and 1000 lncRNAs. For all the annotation, let it blank [ default undef, all\
    \ the two annotations ]"
  id: num_tx
  inputBinding:
    prefix: --numtx
  type: string
- doc: =[0-1]                      Random forest voting cutoff [ default undef i.e
    will compute best cutoff ]
  id: rf_cut
  inputBinding:
    prefix: --rfcut
  type: boolean
- doc: Two specificity threshold based on the 10-fold cross-validation, first one
    for mRNA and the second for lncRNA, need to be in ]0,1[ on separated by a ','
  id: speth_res
  inputBinding:
    prefix: --spethres
  type: string
- doc: =1,2,3,6,9,12                Kmer size list with size separate by ',' as string
    [ default "1,2,3,6,9,12" ], the maximum value for one size is '15'
  id: km_er
  inputBinding:
    prefix: --kmer
  type: boolean
- doc: Output filename [ default infile_name ]
  id: out_name
  inputBinding:
    prefix: --outname
  type: string
- doc: ="feelnc_codpot_out/"         Output directory [ default "./feelnc_codpot_out/"
    ]
  id: outdir
  inputBinding:
    prefix: --outdir
  type: boolean
- doc: "The mode of the lncRNA sequences simulation if no lncRNA sequences have been\
    \ provided. The mode can be: 'shuffle'   : make a permutation of mRNA sequences\
    \ while preserving the 7mer count. Can be done on either FASTA and GTF input file;\
    \ 'intergenic': extract intergenic sequences. Can be done *only* on GTF input\
    \ file."
  id: mode
  inputBinding:
    prefix: --mode
  type: boolean
- doc: =0.75                   Ratio between mRNA sequence lengths and non coding
    intergenic region sequence lengths as, by default, ncInter = mRNA * 0.75
  id: size_inter
  inputBinding:
    prefix: --sizeinter
  type: boolean
- doc: "=3                      Integer [0,1,2,3,4] to specify the type of longest\
    \ ORF calculate [ default: 3 ] for learning data set. If the CDS is annotated\
    \ in the .GTF, then the CDS is considered as the longest ORF, whatever the --orftype\
    \ value. '0': ORF with start and stop codon; '1': same as '0' and ORF with only\
    \ a start codon, take the longest; '2': same as '1' but with a stop codon; '3':\
    \ same as '0' and ORF with a start or a stop, take the longest (see '1' and '2');\
    \ '4': same as '3' but if no ORF is found, take the input sequence as ORF."
  id: learn_orf_type
  inputBinding:
    prefix: --learnorftype
  type: boolean
- doc: '=3                       Integer [0,1,2,3,4] to specify the type of longest
    ORF calculate [ default: 3 ] for test data set. See --learnortype description
    for more informations.'
  id: test_orf_type
  inputBinding:
    prefix: --testorftype
  type: boolean
- doc: Number of trees used in random forest [ default 500 ]
  id: n_tree
  inputBinding:
    prefix: --ntree
  type: boolean
- doc: =0.1                      Percentage of the training file use for the training
    of the kmer model. What remains will be used to train the random forest
  id: percentage
  inputBinding:
    prefix: --percentage
  type: boolean
- doc: =0                           To keep the temporary files in a 'tmp' directory
    the outdir, by default don't keep it (0 value). Any other value than 0 will keep
    the temporary files
  id: keep_tmp
  inputBinding:
    prefix: --keeptmp
  type: boolean
- doc: '=1                         Integer [0,1,2]: which level of information that
    need to be print [ default 1 ]. Note that that printing is made on STDERR'
  id: verbosity
  inputBinding:
    prefix: --verbosity
  type: boolean
- doc: =1234                           Use to fixe the seed value for the extraction
    of intergenic DNA region to get lncRNA like sequences and for the random forest
    [ default 1234 ]
  id: seed
  inputBinding:
    prefix: --seed
  type: boolean
- doc: added
  id: to
  inputBinding:
    prefix: -to
  type: string
