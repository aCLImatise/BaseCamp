class: CommandLineTool
id: ref_eval.cwl
inputs:
- id: in_scores
  doc: "The groups of scores to compute, separated by commas (e.g.,\n--scores=nucl,contig,kc).\
    \ It is more efficient to compute all\nthe scores you are interested in using\
    \ one invocation of\nREF-EVAL instead of using multiple invocations that each\n\
    compute one score. The available score groups are as follows:\nAlignment-based\
    \ score groups:\n* nucl: nucleotide precision, recall, and F1.\n* contig: contig\
    \ precision, recall, and F1.\n* pair: pair precision, recall, and F1.\nAlignment-free\
    \ score groups:\n* kmer: kmer Kullback-Leibler divergence, Jensen-Shannon\ndivergence,\
    \ and Hellinger distance.\n* kc: kmer recall, number of nucleotides, and kmer\n\
    compression score.\nRequired unless --paper is given."
  type: long
  inputBinding:
    prefix: --scores
- id: in_weighted
  doc: "A string indicating whether to compute weighted or unweighted\nvariants of\
    \ scores, or both (e.g., --weighted=yes):\n* yes: compute weighted variants of\
    \ scores.\n* no: compute unweighted variants of scores.\n* both: compute both\
    \ weighted and unweighted variants of\nscores.\nIn weighted variants, the expression\
    \ levels (TPM) of the\nassembly and reference sequences are taken into account,\
    \ and\nhence need to be specified using --A-expr and --B-expr.\nUnweighted variants\
    \ are equivalent to weighted variants with\nuniform expression.\nThe distinction\
    \ between weighted and unweighted variants\ndoesn't make sense for the KC score,\
    \ so this option is\nignored by the KC score.\nRequired unless --paper or only\
    \ --score=kc is given."
  type: string
  inputBinding:
    prefix: --weighted
- id: in_paper
  doc: "As an alternative to the above, if you are only interested in\ncomputing the\
    \ scores described in the main text of our paper\n[1], you can pass the --paper\
    \ flag instead of the --scores\nand --weighted options. In that case, the following\
    \ scores\nwill be computed:\nAlignment-based scores:\n* unweighted nucleotide\
    \ F1\n* unweighted contig F1\nAlignment-free score groups:\n* weighted kmer compression\
    \ score\nFor obvious reasons, the --scores and --weighted options are\nincompatible\
    \ with this flag.\n[1] Bo Li*, Nathanael Fillmore*, Yongsheng Bai, Mike Collins,\n\
    James A. Thompson, Ron Stewart, Colin N. Dewey. Evaluation of\nde novo transcriptome\
    \ assemblies from RNA-Seq data."
  type: boolean
  inputBinding:
    prefix: --paper
- id: in_a_seqs
  doc: The assembly sequences, in FASTA format. Required.
  type: string
  inputBinding:
    prefix: --A-seqs
- id: in_b_seqs
  doc: The reference sequences, in FASTA format. Required.
  type: string
  inputBinding:
    prefix: --B-seqs
- id: in_a_expr
  doc: "The assembly expression, for use in weighted scores, as\nproduced by RSEM\
    \ in a file called *.isoforms.results.\nRequired for weighted variants of scores."
  type: File
  inputBinding:
    prefix: --A-expr
- id: in_b_expr
  doc: "The reference expression, for use in weighted scores, as\nproduced by RSEM\
    \ in a file called *.isoforms.results.\nRequired for weighted variants of scores."
  type: File
  inputBinding:
    prefix: --B-expr
- id: in_a_to_b
  doc: "The alignments of the assembly to the reference. The file\nformat is specified\
    \ by --alignment-type. Required for\nalignment-based scores."
  type: File
  inputBinding:
    prefix: --A-to-B
- id: in_b_to_a
  doc: "The alignments of the reference to the assembly. The file\nformat is specified\
    \ by --alignment-type. Required for\nalignment-based scores."
  type: File
  inputBinding:
    prefix: --B-to-A
- id: in_alignment_type
  doc: "The type of alignments used, either blast or psl. Default:\npsl. Currently\
    \ BLAST support is experimental, not well\ntested, and not recommended."
  type: string
  inputBinding:
    prefix: --alignment-type
- id: in_strand_specific
  doc: "If this flag is present, it is assumed that all the assembly\nand reference\
    \ sequences have the same orientation. Thus,\nalignments or kmer matches that\
    \ are to the reverse strand are\nignored."
  type: boolean
  inputBinding:
    prefix: --strand-specific
- id: in_read_len
  doc: "This option only applies to the KC scores. The read length of\nthe reads used\
    \ to build the assembly, used in the denominator\nof the ICR. Required for KC\
    \ scores."
  type: long
  inputBinding:
    prefix: --readlen
- id: in_num_reads
  doc: "This option only applies to the KC scores. The number of\nreads used to build\
    \ the assembly, used in the denominator of\nthe ICR. Required for KC scores."
  type: long
  inputBinding:
    prefix: --num-reads
- id: in_k_merle_n
  doc: "This option only applies to the kmer and KC scores. This is\nthe length (\"\
    k\") of the kmers used in the definition of the\nKC and kmer scores. Required\
    \ for KC and kmer scores."
  type: long
  inputBinding:
    prefix: --kmerlen
- id: in_min_frac_identity
  doc: "This option only applies to contig scores. Alignments with\nfraction identity\
    \ less than this threshold are ignored. The\nfraction identity of an alignment\
    \ is min(x/y, x/z), where\n* $x$ is the number of bases in the assembly sequence\
    \ that\nare aligned to an identical base in the reference\nsequence, according\
    \ to the alignment,\n* $y$ is the number of bases in the assembly sequence, and\n\
    * $z$ is the number of bases in the reference sequence.\nDefault: 0.99."
  type: long
  inputBinding:
    prefix: --min-frac-identity
- id: in_max_frac_in_del
  doc: "This option only applies to contig scores. Alignments with\nfraction indel\
    \ greater than this threshold are ignored. For\npsl alignments, the fraction indel\
    \ of an alignment is\n$\\max(w/y, x/z)$, where\n* $w$ is the number of bases that\
    \ are inserted in the\nassembly sequence, according to the alignment (\"Q gap\n\
    bases\"),\n* $x$ is the number of bases that are inserted in the\nreference sequence,\
    \ according to the alignment (\"T gap\nbases\"),\n* $y$ is the number of bases\
    \ in the assembly sequence, and\n* $z$ is the number of bases in the reference\
    \ sequence.\nFor blast alignments, the fraction indel of an alignment is\n$\\\
    max(x/y, x/z)$, where\n* $x$ is the number of gaps bases that are inserted in\
    \ the\nreference sequence, according to the alignment (\"gaps\"),\n* $y$ is the\
    \ number of bases in the assembly sequence, and\n* $z$ is the number of bases\
    \ in the reference sequence.\nDefault: 0.01."
  type: long
  inputBinding:
    prefix: --max-frac-indel
- id: in_min_segment_len
  doc: "This option only applies to nucleotide and pair scores.\nAlignment segments\
    \ that contain fewer than this number of\nbases will be discarded. Default: 100.\
    \ In the DETONATE paper,\nthis was set to the read length."
  type: long
  inputBinding:
    prefix: --min-segment-len
- id: in_hash_table_type
  doc: "The type of hash table to use, either \"sparse\" or \"dense\".\nThis is only\
    \ relevant for KC and kmer scores. The sparse\ntable is slower but uses less memory.\
    \ The dense table is\nfaster but uses more memory. Default: \"sparse\"."
  type: string
  inputBinding:
    prefix: --hash-table-type
- id: in_hash_table_numeric_type
  doc: "The numeric type to use to store values in the hash table,\neither \"double\"\
    \ or \"float\". This is only relevant for KC and\nkmer scores. Using single-precision\
    \ floating point numbers\n(\"float\") requires less memory than using double-precision\n\
    (\"double\"), but may also result in more numerical error. Note\nthat we use double-precision\
    \ numbers throughout our\ncalculations even if single-precision numbers are stored\
    \ in\nthe table, so the additional error should be minimal.\nDefault: \"double\"\
    ."
  type: double
  inputBinding:
    prefix: --hash-table-numeric-type
- id: in_hash_table_fudge_factor
  doc: "This is only relevant for KC and kmer scores. When the hash\ntable is created,\
    \ its initial capacity is set as the total\nworst-case number of possible kmers\
    \ in the assembly and\nreference, based on each sequence's length, divided by\
    \ the\nfudge factor. The default, 2.0, is often reasonable because\n(1) most kmers\
    \ should be shared by the assembly and the\nreference, and (2) many kmers will\
    \ be repeated several times.\nHowever, if you have a lot of memory or a really\
    \ bad\nassembly, you could try a smaller number. Default: 2.0."
  type: long
  inputBinding:
    prefix: --hash-table-fudge-factor
- id: in_trace
  doc: "If given, the prefix for additional output that provides\ndetails about the\
    \ REF-EVAL scores; if not given, no such\noutput is produced. Currently, the only\
    \ such output is as\nfollows.\n* (--trace).{weighted,unweighted}_contig_{precision,recall}_matching\n\
    is a TSV file that describes the matching used to\ncompute the weighted or unweighted\
    \ contig precision or\nrecall. (Details about the matching are given in the\n\
    section on score definitions below.) For recall, each\nrow corresponds to a reference\
    \ sequence $b$. Column 1\ncontains $b$'s name. If $b$ is matched to a contig $a$,\n\
    then the remaining columns are as follows:\n* Column 2 contains $a$'s name.\n\
    * Column 3 contains the weight of the edge between\n$b$ and $a$. (This is set\
    \ to the uniform weights\n$1/|B|$ in the unweighted case, although the\nmaximum\
    \ cardinality matching algorithm does not\nactually use these weights.)\n* Column\
    \ 4 contains the names of all the contigs $a'$\nthat are adjacent to $b$ in the\
    \ bipartite graph\nthat the matching is based on, separated by commas.\nThus,\
    \ this column lists all the contigs $a'$ that\nhave a \"good enough\" match with\
    \ the reference\nsequence $b$, according to the criteria used to\nbuild the bipartite\
    \ graph. (See the section below\non score definitions for details.)\nOtherwise,\
    \ if $b$ is not matched to any contig, columns\n2 and 3 contain \"NA\". For precision,\
    \ the file has the\nsame format, but with the reference and the assembly\ninterchanged.\
    \ In other words, each row corresponds to a\ncontig $a$ and contains information\
    \ about its matching\nto a reference sequence $b$, or all \"NA\" values if $a$\n\
    was not matched."
  type: File
  inputBinding:
    prefix: --trace
- id: in_b_expr_dot
  doc: "If --weighted=no, we construct the kmer occurrence frequency profiles\n$p_A$\
    \ and $p_B$ in the same way, except that uniform relative\nabundances are used,\
    \ i.e., $\\tau(a) = 1/|A|$ for all $a$ in $A$, and\n$\\tau(b) = 1/|B|$ for all\
    \ $b$ in $B$, where $|A|$ is the number of\ncontigs in $A$, and $|B|$ is the number\
    \ of reference sequences in\n$B$.\nLet $m$ be the \"mean\" profile of $p_A$ and\
    \ $p_B$:\n$$ m(r) = (1/2) (p_A(r) + p_B(r)) \\qquad\\hbox{for every kmer $r$}.\
    \ $$\nThe Jensen-Shannon divergence between $p_A$ and $p_B$ is defined in\nterms\
    \ of the KL divergence between $p_A$ and the mean, and $p_B$ and\nthe mean, as\
    \ follows:\n* Let $KL(p_A || m) = \\sum_r p_A(r) (\\log_2(p_A(r)) -\n\\log_2(m(r)))$.\n\
    * Let $KL(p_B || m) = \\sum_r p_B(r) (\\log_2(p_B(r)) -\n\\log_2(m(r)))$.\n* Let\
    \ $JS(p_A || p_B) = (1/2) (KL(p_A || m) + KL(p_B || m))$.\nIn the output file,\
    \ these three scores are denoted\n(un)weighted_kmer_KL_A_to_M, (un)weighted_kmer_KL_B_to_M,\
    \ and\n(un)weighted_kmer_jensen_shannon, respectively.\nThe Hellinger distance\
    \ between $p_A$ and $p_B$ is defined as\n$$ \\sqrt{ (1/2) \\sum_r (\\sqrt{p_A(r)}\
    \ - \\sqrt{p_B(r)})^2 } $$\nThe total variation distance between $p_A$ and $p_B$\
    \ is defined as\n$$ (1/2) \\sum_r |p_A(r) - p_B(r)|, $$\nwhere $|\\cdot|$ denotes\
    \ absolute value. Above, $\\sum_r$ denotes a sum\nover all possible kmers $r$\
    \ (most of which will have $p_A(r) = p_B(r)\n= 0$)."
  type: boolean
  inputBinding:
    prefix: --B-expr.
- id: in_sequences_dot
  doc: 'Score definitions: contig precision, recall, and F1'
  type: string
  inputBinding:
    position: 0
- id: in_var_23
  doc: b1
  type: long
  inputBinding:
    position: 0
- id: in_var_24
  doc: a1        a2
  type: long
  inputBinding:
    position: 0
- id: in_var_25
  doc: b1
  type: long
  inputBinding:
    position: 0
- id: in_var_26
  doc: a1        a2
  type: long
  inputBinding:
    position: 0
- id: in_var_27
  doc: b1
  type: long
  inputBinding:
    position: 0
- id: in_var_28
  doc: a1        a2
  type: long
  inputBinding:
    position: 0
- id: in_var_29
  doc: a1        a2
  type: long
  inputBinding:
    position: 0
- id: in_var_30
  doc: b1
  type: long
  inputBinding:
    position: 0
- id: in_var_31
  doc: a1        a2
  type: long
  inputBinding:
    position: 0
- id: in_var_32
  doc: b1
  type: long
  inputBinding:
    position: 0
- id: in_var_33
  doc: a1        a2
  type: long
  inputBinding:
    position: 0
- id: in_var_34
  doc: b1
  type: long
  inputBinding:
    position: 0
- id: in_var_35
  doc: a1        a2
  type: long
  inputBinding:
    position: 0
- id: in_var_36
  doc: b1
  type: long
  inputBinding:
    position: 0
- id: in_alignment_dot
  doc: "B: b   = AGCTCGACGT\nA: a_1 = AGCT\na_2 =     CGACGT"
  type: string
  inputBinding:
    position: 0
- id: in_below_dot
  doc: To compute the WKR, the relative abundances of the reference elements
  type: string
  inputBinding:
    position: 0
- id: in_where
  doc: "* $n_A$ is the total number of bases in the assembly $A$,\n* $N$ is the total\
    \ number of reads, as specified by --num-reads,\nand\n* $L$ is the read length,\
    \ as specified by --readlen."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_trace
  doc: "If given, the prefix for additional output that provides\ndetails about the\
    \ REF-EVAL scores; if not given, no such\noutput is produced. Currently, the only\
    \ such output is as\nfollows.\n* (--trace).{weighted,unweighted}_contig_{precision,recall}_matching\n\
    is a TSV file that describes the matching used to\ncompute the weighted or unweighted\
    \ contig precision or\nrecall. (Details about the matching are given in the\n\
    section on score definitions below.) For recall, each\nrow corresponds to a reference\
    \ sequence $b$. Column 1\ncontains $b$'s name. If $b$ is matched to a contig $a$,\n\
    then the remaining columns are as follows:\n* Column 2 contains $a$'s name.\n\
    * Column 3 contains the weight of the edge between\n$b$ and $a$. (This is set\
    \ to the uniform weights\n$1/|B|$ in the unweighted case, although the\nmaximum\
    \ cardinality matching algorithm does not\nactually use these weights.)\n* Column\
    \ 4 contains the names of all the contigs $a'$\nthat are adjacent to $b$ in the\
    \ bipartite graph\nthat the matching is based on, separated by commas.\nThus,\
    \ this column lists all the contigs $a'$ that\nhave a \"good enough\" match with\
    \ the reference\nsequence $b$, according to the criteria used to\nbuild the bipartite\
    \ graph. (See the section below\non score definitions for details.)\nOtherwise,\
    \ if $b$ is not matched to any contig, columns\n2 and 3 contain \"NA\". For precision,\
    \ the file has the\nsame format, but with the reference and the assembly\ninterchanged.\
    \ In other words, each row corresponds to a\ncontig $a$ and contains information\
    \ about its matching\nto a reference sequence $b$, or all \"NA\" values if $a$\n\
    was not matched."
  type: File
  outputBinding:
    glob: $(inputs.in_trace)
cwlVersion: v1.1
baseCommand:
- ref-eval
