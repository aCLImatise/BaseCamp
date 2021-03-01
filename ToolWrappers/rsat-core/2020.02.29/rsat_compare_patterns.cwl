class: CommandLineTool
id: rsat_compare_patterns.cwl
inputs:
- id: in_help
  doc: (must be first argument) display options
  type: boolean?
  inputBinding:
    prefix: -help
- id: in_verbose
  doc: verbose
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_seq_one
  doc: "first sequence for the comparison\nThis argument can be repeated on the same\
    \ command line\nto enter multiple patterns."
  type: boolean?
  inputBinding:
    prefix: -seq1
- id: in_seq_two
  doc: "second sequence for the comparison\nThe options -seq1 and -seq2 can be used\
    \ iteratively to\nspecify multiple sequence patterns. Each sequence of\ngroup\
    \ 1 is then compared to each sequence of group 2.\nex: -seq1 gataag -seq1 gattag\
    \ -seq1 gataah\n-seq2 agataata -seq2 gtttag\nNote that when many patterns have\
    \ to be entered, the\noptions -file1 and -file2 are more convenient."
  type: boolean?
  inputBinding:
    prefix: -seq2
- id: in_file_one
  doc: "file containing a list of patterns to be used as first\nsequences for the\
    \ comparison (see format below)."
  type: boolean?
  inputBinding:
    prefix: -file1
- id: in_file_two
  doc: "file containing a list of patterns to be used as second\nsequences for the\
    \ comparison (see format below)."
  type: boolean?
  inputBinding:
    prefix: -file2
- id: in_return
  doc: "fields\nEach selected field is returned in a separate column.\nSupported:\
    \ match,Pval,Eval_p,sig_p,Eval_f,sig_f,noffs,weight,seq,id,length,offset,strand,max_w,diff_w,rel_w,top_s"
  type: long?
  inputBinding:
    prefix: -return
- id: in_uth
  doc: "#\nupper threshold value for a given field\nSupported_fields: match,Pval,Eval_p,sig_p,Eval_f,sig_f,weight,len1,len2,mlen,tlen,offset,max_w1,max_w2,max_w,diff_w1,diff_w2,diff_w,rel_w1,rel_w2,rel_w"
  type: long?
  inputBinding:
    prefix: -uth
- id: in_lth
  doc: "#\nlower threshold value for a given field\n(same fields as -uth)"
  type: string?
  inputBinding:
    prefix: -lth
- id: in_slide
  doc: "find best match by sliding seq2 along seq1\nWhen this option is used, the\
    \ best offset is also\nreturned. The offset is the number of positions to\nshift\
    \ seq1 in order to obtain the best scoring\nalignment. Negative values represent\
    \ a shit of seq2 to\nthe left side, positive values ot the right side."
  type: boolean?
  inputBinding:
    prefix: -slide
- id: in_two_str
  doc: "Match on both strands\nIn addition to the direct matching (strand = D), the\n\
    reverse complement of each pattern of group 1\n(specified by -seq1 or -file1)\
    \ is matched against each\npattern of group2."
  type: boolean?
  inputBinding:
    prefix: -2str
- id: in_table
  doc: "Return a contingency table, where each row corresponds\nto one sequence from\
    \ file 1, each column to a sequence\nfrom file 2, and the cells contain the value\
    \ of the\nspecified field.\nSupported fields: match,Pval,Eval_p,sig_p,Eval_f,sig_f,weight,offset,strand,max_w,diff_w,rel_w1,rel_w2,rel_w,top_s"
  type: File?
  inputBinding:
    prefix: -table
- id: in_null
  doc: "null string (default ) displayed in\ncontingency tables when the cell contains\
    \ a value\nwhich does not pass the thresholds."
  type: boolean?
  inputBinding:
    prefix: -null
- id: in_compare_patterns
  doc: AUTHOR
  type: string
  inputBinding:
    position: 0
- id: in_supported_dot
  doc: This program is typically used to compare a set of discovered
  type: string
  inputBinding:
    position: 0
- id: in_util
  doc: sequences
  type: string
  inputBinding:
    position: 0
- id: in_patterns
  doc: "seq1 and seq2 must be DNA sequences (not peptidic). \nIUPAC degenerate code\
    \ is accepted in seq1 as well as seq2."
  type: string
  inputBinding:
    position: 0
- id: in_match
  doc: number of matching positions
  type: string
  inputBinding:
    position: 0
- id: in_pval
  doc: "P-value for a single comparison. \nThis represents the probability, for the\
    \ comparison\nbetween two sequences, to return a match.\nWhen the simple nucleotide\
    \ alphabet (A, C, G, T) is\nused, the probability of random match is estimated\
    \ to\n1/4: given the letter in the first sequence, the\nprobability that a random\
    \ letter would match it is\n1/4.\nNote that this assumes that nucleotides are\
    \ considered\nequiprobable.\nThe program also scores matches between the\ndegenerated\
    \ nucleotides defined by the IUPAC\ncommission (http://www.iupac.org/).\ncode\
    \    nucleotides     mnemonics\n---------------------------------------------------------\n\
    A                       Adenine\nC                       Cytosine\nG         \
    \              Guanine\nT                       Thymine\nR       = A or G    \
    \    puRines\nY       = C or T        pYrimidines\nW       = A or T        Weak\
    \ hydrogen bonding\nS       = G or C        Strong hydrogen bonding\nM       =\
    \ A or C        aMino group at common position\nK       = G or T        Keto group\
    \ at common position\nH       = A, C or T     not G\nB       = G, C or T     not\
    \ A\nV       = G, A, C       not T\nD       = G, A or T     not C\nN       = G,\
    \ A, C or T  aNy)\nThe probability of a match between two degenerated\nnucleotides\
    \ is calculated with the hypergeometric\ndistribution.\nThe underlying probabilistic\
    \ model is that the two\nletters to be macthed represent each a subset of the\n\
    alphabet. The problem can be thought of as an urn with\n4 balls, each ball representing\
    \ one possible\nnucleotide (A, C, G, T).\nFor the sake of illustration, let us\
    \ assume that we\nwant to compare the two IUPAC codes Y (C or T) and M\n(A or\
    \ C). in the urn (alphabet), we will label in\nblack the balls (nucleotides) comprised\
    \ in the first\nset (C and T). We can now consider the second IUPAC\nletter as\
    \ a random selection of 2 balls in this urn,\nwhich contains 2 black balls (A,\
    \ C) and 2 white balls\n(G, T). Our selection (C and T) contains one black\nball.\
    \ It is thus a match.\nThe right tail of the hypergeometric distribution\nallows\
    \ us to calculate the probability to observe at\nleast one back ball in a selection\
    \ of 2 balls,\nselected at random in an urn with 2 black balls and 2\nwhite balls.\n\
    c      i  n-i     n\nPval = P(X >= c) = SUM  ( C  C     / C  )\ni=1     m  4-m\
    \     4\nWhere\nm   is the number of black balls in the urn\n(nucleotides matching\
    \ the first IUPAC letter)\n4-m is the number of white balls in the urn\n(nucleotides\
    \ not matching the first IUPAC\nletter)\nn   is the number of nucleotides matched\
    \ by the\nsecond IUPAC letter.\nc = min(n,m) is the maximal number of common\n\
    letters between the m nucleotides of the 1st\nIUPAC letter and the n nucleotides\
    \ of the 2nd\nIUPAC letter.\nIn our example (Y against M), m=2, n=2, c=min(2,2)=2.\n\
    Pval=0.83333\nWe can check the generality of the formula with some\nexamples :\n\
    - a trivial match (e.g. N against A) should have a\nP-value of 1. In this case,\
    \ m=4, n=1, c=min(4,1)=1.\n1  0    1\nPval = P(X >= c) =  C  C  / C   = 4*1/4\
    \ = 1\n4  0    4\n- a simple match between two non-degenerated letters\nshould\
    \ have a P-value of 1/4. Indeed, in this case\nn=1, m=1, c=min(1,1)=1.\n1  0 \
    \   1\nPval = P(X >= c) =  C  C  / C  = 0.25\n1  3    4\n- Interestingly, a match\
    \ between a IUPAC letter\nmatching 3 nucleotides (e.g. H = A, C or T) letter\n\
    another matching 2 nucleotides (e.g. S = G or C)\nwill have a probability to 1.\
    \ Indeed, m=3, n=2 and\nc=min(3,2)=2, thus:\n2      i  2-i    2\nPval = P(X >=\
    \ c) = SUM  ( C  C    / C  )\ni=1     3  1      4\nThis reflects the fact that\
    \ it is impossible to\nhave not a single white ball in the selection, when\nwe\
    \ select 2 balls among a set of 3 black and 1\nwhite balls."
  type: string
  inputBinding:
    position: 1
- id: in_eval_p
  doc: "E-value for a single comparison between two sequences. \nThis is a correction\
    \ for multiple testing, taking\ninto account the fact that a comparison between\
    \ two\nsequences (or patterns) can already result in some\nmulti-testing effects,\
    \ for two reasons :\n- with the option -slide, the two sequences are\ncompared\
    \ with different offsets.\nEval_p = Pval * noffs\n- with the option -2str, two\
    \ comparisons are\nperformed per pair of sequences. In this case,\nEval_p = Pval*2*noffs\n\
    It is useful to return the Eval together with the\nnumber of offsets analyzed\
    \ (corresponding to the\nnumber of tests for a given pair of sequences).\n-return\
    \ Pval,noffs,Eval,sig"
  type: string
  inputBinding:
    position: 2
- id: in_sig_p
  doc: Significance for a single comparison between two
  type: string
  inputBinding:
    position: 3
- id: in_sequences_dot
  doc: "This is a simple logarithmic conversion of Eval_p.\nsig_p = -log10(Eval_p)"
  type: string
  inputBinding:
    position: 4
- id: in_eval_f
  doc: "E-value for the whole analysis. \nThis E-value includes a correction for the\
    \ fact\nthat, usually, multiple sequences (patterns) are\ncompared to multiple\
    \ sequences (patterns).\nFor example, if the program is used to compare an\noligo-analysis\
    \ result file with a database of\nannotated sites, the oligo file can typically\n\
    contain a dozen of words, and the database several\nhundreds of sites."
  type: string
  inputBinding:
    position: 5
- id: in_sig_f
  doc: "Significance for the whole analysis. \nThis is a simple logarithmic conversion\
    \ of Eval_f.\nsig_f = -log10(Eval_f)"
  type: string
  inputBinding:
    position: 6
- id: in_weight
  doc: "the weight reflects the number of matching positions,\nwith a lower weight\
    \ for matches between partially\nspecified nucleotides (IUPAC codes).\nThe weight\
    \ is calculated as\n-log4(Pval)\nFor an alignment between non-ambigous nucleotides,\
    \ the\nweight is maximal, and its value is the number of\nmatching residues."
  type: string
  inputBinding:
    position: 7
- id: in_max_w_one
  doc: maximal weight for pattern 1
  type: long
  inputBinding:
    position: 0
- id: in_max_w_two
  doc: maximal weight for pattern 2
  type: long
  inputBinding:
    position: 1
- id: in_length
  doc: "lengths \nThis option returns 4 length values\nlen1   length of sequence 1\n\
    len2   length of sequence 2\nmlen   length of the match\ntlen   total length of\
    \ the alignment\ntlen = len1 + len2 - mlen"
  type: long
  inputBinding:
    position: 0
- id: in_seq
  doc: sequences to be compared
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rsat
- compare-patterns
