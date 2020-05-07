class: CommandLineTool
id: ref_eval.cwl
inputs:
- id: b
  doc: '-----------------     ------------- /    \   /  \   /  | / | /      \ /    \
    /   |/  | /  x     /  y   \  z / w | /        / \    / \  /|   |'
  type: string
  inputBinding:
    position: 0
- id: a
  doc: '---------   --------- --------- a0          a1        a2'
  type: string
  inputBinding:
    position: 1
- id: b
  doc: '------------------   -------------- /        /\ \   /  | / | /        /  \
    \ /   |/  | /  x     /    \*\  z / w |        * = y - x /        /      / \  /|   |'
  type: string
  inputBinding:
    position: 0
- id: a
  doc: '---------   --------- --------- a0          a1        a2'
  type: string
  inputBinding:
    position: 1
- id: b
  doc: '-----------------    -------------- /        /      /    /|| /        /      /    /
    || /  x     /      /  z /  *|        * = w - z /        /      /    /   ||'
  type: string
  inputBinding:
    position: 0
- id: a
  doc: '---------   --------- --------- a0          a1        a2'
  type: string
  inputBinding:
    position: 1
- id: b
  doc: '-----[--------]--    [----][]------ /        /      /    /|| ...'
  type: string
  inputBinding:
    position: 0
- id: b
  doc: '-----------------     ------------- /    \   /  \   /  | / | /      \ /    \
    /   |/  | /  x     /  y   \  z / w | /        / \    / \  /|   |'
  type: string
  inputBinding:
    position: 0
- id: a
  doc: '---------   --------- --------- a0          a1        a2'
  type: string
  inputBinding:
    position: 1
- id: b
  doc: '------------------   -------------- /        /\ \   /  | / | /        /  \
    \ /   |/  | /  x     /    \*\  z / w |        * = y - x /        /      / \  /|   |'
  type: string
  inputBinding:
    position: 0
- id: a
  doc: '---------   --------- --------- a0          a1        a2'
  type: string
  inputBinding:
    position: 1
- id: b
  doc: '------------------   -------------- /        /\ \   /  |   | /        /  \
    \ /  /|   | /  x     /    \*\ +/ | w |        * = y - x /        /      / \/  |   |        +
    = z - w'
  type: string
  inputBinding:
    position: 0
- id: a
  doc: '---------   --------- --------- a0          a1        a2'
  type: string
  inputBinding:
    position: 1
- id: b
  doc: '------------------   -------------- /        /\ \  +/  |   | /        /  \*\//   |   |
    /  x     /    \ \    | w |        * = y - x /        /     // \   |   |        +
    = (z - w) - (y - x)'
  type: string
  inputBinding:
    position: 0
- id: a
  doc: '---------   --------- --------- a0          a1        a2'
  type: string
  inputBinding:
    position: 1
- id: b
  doc: '-----[--------][-]   []-[---]------ /        /\ \  //  |   |        * = y
    - x x         *   +     w          + = (z - w) - (y - x) ...'
  type: string
  inputBinding:
    position: 0
- id: g
  doc: '11111'
  type: string
  inputBinding:
    position: 0
- id: where
  doc: '* $n_A$ is the total number of bases in the assembly $A$, * $N$ is the total
    number of reads, as specified by --num-reads, and * $L$ is the read length, as
    specified by --readlen.'
  type: string
  inputBinding:
    position: 0
- id: scores
  doc: 'The groups of scores to compute, separated by commas (e.g., --scores=nucl,contig,kc).
    It is more efficient to compute all the scores you are interested in using one
    invocation of REF-EVAL instead of using multiple invocations that each compute
    one score. The available score groups are as follows: Alignment-based score groups:
    * nucl: nucleotide precision, recall, and F1. * contig: contig precision, recall,
    and F1. * pair: pair precision, recall, and F1. Alignment-free score groups: *
    kmer: kmer Kullback-Leibler divergence, Jensen-Shannon divergence, and Hellinger
    distance. * kc: kmer recall, number of nucleotides, and kmer compression score.
    Required unless --paper is given.'
  type: string
  inputBinding:
    prefix: --scores
- id: weighted
  doc: "A string indicating whether to compute weighted or unweighted variants of\
    \ scores, or both (e.g., --weighted=yes): * yes: compute weighted variants of\
    \ scores. * no: compute unweighted variants of scores. * both: compute both weighted\
    \ and unweighted variants of scores. In weighted variants, the expression levels\
    \ (TPM) of the assembly and reference sequences are taken into account, and hence\
    \ need to be specified using --A-expr and --B-expr. Unweighted variants are equivalent\
    \ to weighted variants with uniform expression. The distinction between weighted\
    \ and unweighted variants doesn't make sense for the KC score, so this option\
    \ is ignored by the KC score. Required unless --paper or only --score=kc is given."
  type: string
  inputBinding:
    prefix: --weighted
- id: paper
  doc: 'As an alternative to the above, if you are only interested in computing the
    scores described in the main text of our paper [1], you can pass the --paper flag
    instead of the --scores and --weighted options. In that case, the following scores
    will be computed: Alignment-based scores: * unweighted nucleotide F1 * unweighted
    contig F1 Alignment-free score groups: * weighted kmer compression score For obvious
    reasons, the --scores and --weighted options are incompatible with this flag.
    [1] Bo Li*, Nathanael Fillmore*, Yongsheng Bai, Mike Collins, James A. Thompson,
    Ron Stewart, Colin N. Dewey. Evaluation of de novo transcriptome assemblies from
    RNA-Seq data.'
  type: boolean
  inputBinding:
    prefix: --paper
- id: a_seqs
  doc: The assembly sequences, in FASTA format. Required.
  type: string
  inputBinding:
    prefix: --A-seqs
- id: b_seqs
  doc: The reference sequences, in FASTA format. Required.
  type: string
  inputBinding:
    prefix: --B-seqs
- id: a_expr
  doc: The assembly expression, for use in weighted scores, as produced by RSEM in
    a file called *.isoforms.results. Required for weighted variants of scores.
  type: string
  inputBinding:
    prefix: --A-expr
- id: b_expr
  doc: The reference expression, for use in weighted scores, as produced by RSEM in
    a file called *.isoforms.results. Required for weighted variants of scores.
  type: string
  inputBinding:
    prefix: --B-expr
- id: a_to_b
  doc: The alignments of the assembly to the reference. The file format is specified
    by --alignment-type. Required for alignment-based scores.
  type: string
  inputBinding:
    prefix: --A-to-B
- id: b_to_a
  doc: The alignments of the reference to the assembly. The file format is specified
    by --alignment-type. Required for alignment-based scores.
  type: string
  inputBinding:
    prefix: --B-to-A
- id: alignment_type
  doc: 'The type of alignments used, either blast or psl. Default: psl. Currently
    BLAST support is experimental, not well tested, and not recommended.'
  type: string
  inputBinding:
    prefix: --alignment-type
- id: strand_specific
  doc: If this flag is present, it is assumed that all the assembly and reference
    sequences have the same orientation. Thus, alignments or kmer matches that are
    to the reverse strand are ignored.
  type: boolean
  inputBinding:
    prefix: --strand-specific
- id: read_len
  doc: This option only applies to the KC scores. The read length of the reads used
    to build the assembly, used in the denominator of the ICR. Required for KC scores.
  type: string
  inputBinding:
    prefix: --readlen
- id: num_reads
  doc: This option only applies to the KC scores. The number of reads used to build
    the assembly, used in the denominator of the ICR. Required for KC scores.
  type: string
  inputBinding:
    prefix: --num-reads
- id: k_merle_n
  doc: This option only applies to the kmer and KC scores. This is the length ("k")
    of the kmers used in the definition of the KC and kmer scores. Required for KC
    and kmer scores.
  type: string
  inputBinding:
    prefix: --kmerlen
- id: min_frac_identity
  doc: 'This option only applies to contig scores. Alignments with fraction identity
    less than this threshold are ignored. The fraction identity of an alignment is
    min(x/y, x/z), where * $x$ is the number of bases in the assembly sequence that
    are aligned to an identical base in the reference sequence, according to the alignment,
    * $y$ is the number of bases in the assembly sequence, and * $z$ is the number
    of bases in the reference sequence. Default: 0.99.'
  type: string
  inputBinding:
    prefix: --min-frac-identity
- id: max_frac_in_del
  doc: 'This option only applies to contig scores. Alignments with fraction indel
    greater than this threshold are ignored. For psl alignments, the fraction indel
    of an alignment is $\max(w/y, x/z)$, where * $w$ is the number of bases that are
    inserted in the assembly sequence, according to the alignment ("Q gap bases"),
    * $x$ is the number of bases that are inserted in the reference sequence, according
    to the alignment ("T gap bases"), * $y$ is the number of bases in the assembly
    sequence, and * $z$ is the number of bases in the reference sequence. For blast
    alignments, the fraction indel of an alignment is $\max(x/y, x/z)$, where * $x$
    is the number of gaps bases that are inserted in the reference sequence, according
    to the alignment ("gaps"), * $y$ is the number of bases in the assembly sequence,
    and * $z$ is the number of bases in the reference sequence. Default: 0.01.'
  type: string
  inputBinding:
    prefix: --max-frac-indel
- id: min_segment_len
  doc: 'This option only applies to nucleotide and pair scores. Alignment segments
    that contain fewer than this number of bases will be discarded. Default: 100.
    In the DETONATE paper, this was set to the read length.'
  type: string
  inputBinding:
    prefix: --min-segment-len
- id: hash_table_type
  doc: 'The type of hash table to use, either "sparse" or "dense". This is only relevant
    for KC and kmer scores. The sparse table is slower but uses less memory. The dense
    table is faster but uses more memory. Default: "sparse".'
  type: string
  inputBinding:
    prefix: --hash-table-type
- id: hash_table_numeric_type
  doc: 'The numeric type to use to store values in the hash table, either "double"
    or "float". This is only relevant for KC and kmer scores. Using single-precision
    floating point numbers ("float") requires less memory than using double-precision
    ("double"), but may also result in more numerical error. Note that we use double-precision
    numbers throughout our calculations even if single-precision numbers are stored
    in the table, so the additional error should be minimal. Default: "double".'
  type: string
  inputBinding:
    prefix: --hash-table-numeric-type
- id: hash_table_fudge_factor
  doc: "This is only relevant for KC and kmer scores. When the hash table is created,\
    \ its initial capacity is set as the total worst-case number of possible kmers\
    \ in the assembly and reference, based on each sequence's length, divided by the\
    \ fudge factor. The default, 2.0, is often reasonable because (1) most kmers should\
    \ be shared by the assembly and the reference, and (2) many kmers will be repeated\
    \ several times. However, if you have a lot of memory or a really bad assembly,\
    \ you could try a smaller number. Default: 2.0."
  type: string
  inputBinding:
    prefix: --hash-table-fudge-factor
- id: trace
  doc: "If given, the prefix for additional output that provides details about the\
    \ REF-EVAL scores; if not given, no such output is produced. Currently, the only\
    \ such output is as follows. * (--trace).{weighted,unweighted}_contig_{precision,recall}_matching\
    \ is a TSV file that describes the matching used to compute the weighted or unweighted\
    \ contig precision or recall. (Details about the matching are given in the section\
    \ on score definitions below.) For recall, each row corresponds to a reference\
    \ sequence $b$. Column 1 contains $b$'s name. If $b$ is matched to a contig $a$,\
    \ then the remaining columns are as follows: * Column 2 contains $a$'s name. *\
    \ Column 3 contains the weight of the edge between $b$ and $a$. (This is set to\
    \ the uniform weights $1/|B|$ in the unweighted case, although the maximum cardinality\
    \ matching algorithm does not actually use these weights.) * Column 4 contains\
    \ the names of all the contigs $a'$ that are adjacent to $b$ in the bipartite\
    \ graph that the matching is based on, separated by commas. Thus, this column\
    \ lists all the contigs $a'$ that have a \"good enough\" match with the reference\
    \ sequence $b$, according to the criteria used to build the bipartite graph. (See\
    \ the section below on score definitions for details.) Otherwise, if $b$ is not\
    \ matched to any contig, columns 2 and 3 contain \"NA\". For precision, the file\
    \ has the same format, but with the reference and the assembly interchanged. In\
    \ other words, each row corresponds to a contig $a$ and contains information about\
    \ its matching to a reference sequence $b$, or all \"NA\" values if $a$ was not\
    \ matched."
  type: string
  inputBinding:
    prefix: --trace
- id: strand_specific
  doc: present.
  type: string
  inputBinding:
    prefix: --strand-specific
- id: max_frac_in_del
  doc: (q.v.\ for the definition of "fraction indel").
  type: boolean
  inputBinding:
    prefix: --max-frac-indel
- id: strand_specific
  doc: present.
  type: string
  inputBinding:
    prefix: --strand-specific
outputs: []
cwlVersion: v1.1
baseCommand:
- ref-eval
