version 1.0

task RefEval {
  input {
    String? scores
    String? weighted
    Boolean? paper
    String? a_seqs
    String? b_seqs
    String? a_expr
    String? b_expr
    String? a_to_b
    String? b_to_a
    String? alignment_type
    Boolean? strand_specific
    String? read_len
    String? num_reads
    String? k_merle_n
    String? min_frac_identity
    String? max_frac_in_del
    String? min_segment_len
    String? hash_table_type
    String? hash_table_numeric_type
    String? hash_table_fudge_factor
    String? trace
    String b
    String where
  }
  command <<<
    ref-eval \
      ~{b} \
      ~{where} \
      ~{if defined(scores) then ("--scores " +  '"' + scores + '"') else ""} \
      ~{if defined(weighted) then ("--weighted " +  '"' + weighted + '"') else ""} \
      ~{true="--paper" false="" paper} \
      ~{if defined(a_seqs) then ("--A-seqs " +  '"' + a_seqs + '"') else ""} \
      ~{if defined(b_seqs) then ("--B-seqs " +  '"' + b_seqs + '"') else ""} \
      ~{if defined(a_expr) then ("--A-expr " +  '"' + a_expr + '"') else ""} \
      ~{if defined(b_expr) then ("--B-expr " +  '"' + b_expr + '"') else ""} \
      ~{if defined(a_to_b) then ("--A-to-B " +  '"' + a_to_b + '"') else ""} \
      ~{if defined(b_to_a) then ("--B-to-A " +  '"' + b_to_a + '"') else ""} \
      ~{if defined(alignment_type) then ("--alignment-type " +  '"' + alignment_type + '"') else ""} \
      ~{true="--strand-specific" false="" strand_specific} \
      ~{if defined(read_len) then ("--readlen " +  '"' + read_len + '"') else ""} \
      ~{if defined(num_reads) then ("--num-reads " +  '"' + num_reads + '"') else ""} \
      ~{if defined(k_merle_n) then ("--kmerlen " +  '"' + k_merle_n + '"') else ""} \
      ~{if defined(min_frac_identity) then ("--min-frac-identity " +  '"' + min_frac_identity + '"') else ""} \
      ~{if defined(max_frac_in_del) then ("--max-frac-indel " +  '"' + max_frac_in_del + '"') else ""} \
      ~{if defined(min_segment_len) then ("--min-segment-len " +  '"' + min_segment_len + '"') else ""} \
      ~{if defined(hash_table_type) then ("--hash-table-type " +  '"' + hash_table_type + '"') else ""} \
      ~{if defined(hash_table_numeric_type) then ("--hash-table-numeric-type " +  '"' + hash_table_numeric_type + '"') else ""} \
      ~{if defined(hash_table_fudge_factor) then ("--hash-table-fudge-factor " +  '"' + hash_table_fudge_factor + '"') else ""} \
      ~{if defined(trace) then ("--trace " +  '"' + trace + '"') else ""}
  >>>
  parameter_meta {
    scores: "The groups of scores to compute, separated by commas (e.g., --scores=nucl,contig,kc). It is more efficient to compute all the scores you are interested in using one invocation of REF-EVAL instead of using multiple invocations that each compute one score. The available score groups are as follows: Alignment-based score groups: * nucl: nucleotide precision, recall, and F1. * contig: contig precision, recall, and F1. * pair: pair precision, recall, and F1. Alignment-free score groups: * kmer: kmer Kullback-Leibler divergence, Jensen-Shannon divergence, and Hellinger distance. * kc: kmer recall, number of nucleotides, and kmer compression score. Required unless --paper is given."
    weighted: "A string indicating whether to compute weighted or unweighted variants of scores, or both (e.g., --weighted=yes): * yes: compute weighted variants of scores. * no: compute unweighted variants of scores. * both: compute both weighted and unweighted variants of scores. In weighted variants, the expression levels (TPM) of the assembly and reference sequences are taken into account, and hence need to be specified using --A-expr and --B-expr. Unweighted variants are equivalent to weighted variants with uniform expression. The distinction between weighted and unweighted variants doesn't make sense for the KC score, so this option is ignored by the KC score. Required unless --paper or only --score=kc is given."
    paper: "As an alternative to the above, if you are only interested in computing the scores described in the main text of our paper [1], you can pass the --paper flag instead of the --scores and --weighted options. In that case, the following scores will be computed: Alignment-based scores: * unweighted nucleotide F1 * unweighted contig F1 Alignment-free score groups: * weighted kmer compression score For obvious reasons, the --scores and --weighted options are incompatible with this flag. [1] Bo Li*, Nathanael Fillmore*, Yongsheng Bai, Mike Collins, James A. Thompson, Ron Stewart, Colin N. Dewey. Evaluation of de novo transcriptome assemblies from RNA-Seq data."
    a_seqs: "The assembly sequences, in FASTA format. Required."
    b_seqs: "The reference sequences, in FASTA format. Required."
    a_expr: "The assembly expression, for use in weighted scores, as produced by RSEM in a file called *.isoforms.results. Required for weighted variants of scores."
    b_expr: "The reference expression, for use in weighted scores, as produced by RSEM in a file called *.isoforms.results. Required for weighted variants of scores."
    a_to_b: "The alignments of the assembly to the reference. The file format is specified by --alignment-type. Required for alignment-based scores."
    b_to_a: "The alignments of the reference to the assembly. The file format is specified by --alignment-type. Required for alignment-based scores."
    alignment_type: "The type of alignments used, either blast or psl. Default: psl. Currently BLAST support is experimental, not well tested, and not recommended."
    strand_specific: "If this flag is present, it is assumed that all the assembly and reference sequences have the same orientation. Thus, alignments or kmer matches that are to the reverse strand are ignored."
    read_len: "This option only applies to the KC scores. The read length of the reads used to build the assembly, used in the denominator of the ICR. Required for KC scores."
    num_reads: "This option only applies to the KC scores. The number of reads used to build the assembly, used in the denominator of the ICR. Required for KC scores."
    k_merle_n: "This option only applies to the kmer and KC scores. This is the length (\"k\") of the kmers used in the definition of the KC and kmer scores. Required for KC and kmer scores."
    min_frac_identity: "This option only applies to contig scores. Alignments with fraction identity less than this threshold are ignored. The fraction identity of an alignment is min(x/y, x/z), where * $x$ is the number of bases in the assembly sequence that are aligned to an identical base in the reference sequence, according to the alignment, * $y$ is the number of bases in the assembly sequence, and * $z$ is the number of bases in the reference sequence. Default: 0.99."
    max_frac_in_del: "This option only applies to contig scores. Alignments with fraction indel greater than this threshold are ignored. For psl alignments, the fraction indel of an alignment is $\max(w/y, x/z)$, where * $w$ is the number of bases that are inserted in the assembly sequence, according to the alignment (\"Q gap bases\"), * $x$ is the number of bases that are inserted in the reference sequence, according to the alignment (\"T gap bases\"), * $y$ is the number of bases in the assembly sequence, and * $z$ is the number of bases in the reference sequence. For blast alignments, the fraction indel of an alignment is $\max(x/y, x/z)$, where * $x$ is the number of gaps bases that are inserted in the reference sequence, according to the alignment (\"gaps\"), * $y$ is the number of bases in the assembly sequence, and * $z$ is the number of bases in the reference sequence. Default: 0.01."
    min_segment_len: "This option only applies to nucleotide and pair scores. Alignment segments that contain fewer than this number of bases will be discarded. Default: 100. In the DETONATE paper, this was set to the read length."
    hash_table_type: "The type of hash table to use, either \"sparse\" or \"dense\". This is only relevant for KC and kmer scores. The sparse table is slower but uses less memory. The dense table is faster but uses more memory. Default: \"sparse\"."
    hash_table_numeric_type: "The numeric type to use to store values in the hash table, either \"double\" or \"float\". This is only relevant for KC and kmer scores. Using single-precision floating point numbers (\"float\") requires less memory than using double-precision (\"double\"), but may also result in more numerical error. Note that we use double-precision numbers throughout our calculations even if single-precision numbers are stored in the table, so the additional error should be minimal. Default: \"double\"."
    hash_table_fudge_factor: "This is only relevant for KC and kmer scores. When the hash table is created, its initial capacity is set as the total worst-case number of possible kmers in the assembly and reference, based on each sequence's length, divided by the fudge factor. The default, 2.0, is often reasonable because (1) most kmers should be shared by the assembly and the reference, and (2) many kmers will be repeated several times. However, if you have a lot of memory or a really bad assembly, you could try a smaller number. Default: 2.0."
    trace: "If given, the prefix for additional output that provides details about the REF-EVAL scores; if not given, no such output is produced. Currently, the only such output is as follows. * (--trace).{weighted,unweighted}_contig_{precision,recall}_matching is a TSV file that describes the matching used to compute the weighted or unweighted contig precision or recall. (Details about the matching are given in the section on score definitions below.) For recall, each row corresponds to a reference sequence $b$. Column 1 contains $b$'s name. If $b$ is matched to a contig $a$, then the remaining columns are as follows: * Column 2 contains $a$'s name. * Column 3 contains the weight of the edge between $b$ and $a$. (This is set to the uniform weights $1/|B|$ in the unweighted case, although the maximum cardinality matching algorithm does not actually use these weights.) * Column 4 contains the names of all the contigs $a'$ that are adjacent to $b$ in the bipartite graph that the matching is based on, separated by commas. Thus, this column lists all the contigs $a'$ that have a \"good enough\" match with the reference sequence $b$, according to the criteria used to build the bipartite graph. (See the section below on score definitions for details.) Otherwise, if $b$ is not matched to any contig, columns 2 and 3 contain \"NA\". For precision, the file has the same format, but with the reference and the assembly interchanged. In other words, each row corresponds to a contig $a$ and contains information about its matching to a reference sequence $b$, or all \"NA\" values if $a$ was not matched."
    b: "-----[--------][-]   []-[---]------ /        /\ \  //  |   |        * = y - x x         *   +     w          + = (z - w) - (y - x) ..."
    where: "* $n_A$ is the total number of bases in the assembly $A$, * $N$ is the total number of reads, as specified by --num-reads, and * $L$ is the read length, as specified by --readlen."
  }
}