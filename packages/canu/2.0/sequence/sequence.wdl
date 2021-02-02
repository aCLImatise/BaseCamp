version 1.0

task Sequence {
  input {
    Boolean? size
    Boolean? one_x
    Boolean? split_n
    Boolean? simple
    Boolean? lengths
    Boolean? as_sequences
    Boolean? as_bases
    Boolean? bases
    String? sequences
    Boolean? reverse
    Boolean? complement
    Boolean? rc
    Boolean? compress
    Boolean? up_case
    Boolean? down_case
    Int? length
    String? genome
    Boolean? circular
    Int? genome_size
    String? coverage
    String? n_reads
    String? n_bases
    Int? distribution
    String? not_implemented
    Boolean? paired
    String? copies
    String? reads
    String? pairs
    String? fraction
    Int? min
    Int? max
    Boolean? gaussian
    String? mirror
    Float? gc
    Float? at
    Float? sets_frequency_bases
    Float? sets_frequency_c
    Float? sets_frequency_g
    Float? sets_frequency_t
  }
  command <<<
    sequence \
      ~{if (size) then "-size" else ""} \
      ~{if (one_x) then "-1x" else ""} \
      ~{if (split_n) then "-split-n" else ""} \
      ~{if (simple) then "-simple" else ""} \
      ~{if (lengths) then "-lengths" else ""} \
      ~{if (as_sequences) then "-assequences" else ""} \
      ~{if (as_bases) then "-asbases" else ""} \
      ~{if (bases) then "-bases" else ""} \
      ~{if defined(sequences) then ("-sequences " +  '"' + sequences + '"') else ""} \
      ~{if (reverse) then "-reverse" else ""} \
      ~{if (complement) then "-complement" else ""} \
      ~{if (rc) then "-rc" else ""} \
      ~{if (compress) then "-compress" else ""} \
      ~{if (up_case) then "-upcase" else ""} \
      ~{if (down_case) then "-downcase" else ""} \
      ~{if defined(length) then ("-length " +  '"' + length + '"') else ""} \
      ~{if defined(genome) then ("-genome " +  '"' + genome + '"') else ""} \
      ~{if (circular) then "-circular" else ""} \
      ~{if defined(genome_size) then ("-genomesize " +  '"' + genome_size + '"') else ""} \
      ~{if defined(coverage) then ("-coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(n_reads) then ("-nreads " +  '"' + n_reads + '"') else ""} \
      ~{if defined(n_bases) then ("-nbases " +  '"' + n_bases + '"') else ""} \
      ~{if defined(distribution) then ("-distribution " +  '"' + distribution + '"') else ""} \
      ~{if defined(not_implemented) then ("-output " +  '"' + not_implemented + '"') else ""} \
      ~{if (paired) then "-paired" else ""} \
      ~{if defined(copies) then ("-copies " +  '"' + copies + '"') else ""} \
      ~{if defined(reads) then ("-reads " +  '"' + reads + '"') else ""} \
      ~{if defined(pairs) then ("-pairs " +  '"' + pairs + '"') else ""} \
      ~{if defined(fraction) then ("-fraction " +  '"' + fraction + '"') else ""} \
      ~{if defined(min) then ("-min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("-max " +  '"' + max + '"') else ""} \
      ~{if (gaussian) then "-gaussian" else ""} \
      ~{if defined(mirror) then ("-mirror " +  '"' + mirror + '"') else ""} \
      ~{if defined(gc) then ("-gc " +  '"' + gc + '"') else ""} \
      ~{if defined(at) then ("-at " +  '"' + at + '"') else ""} \
      ~{if defined(sets_frequency_bases) then ("-a " +  '"' + sets_frequency_bases + '"') else ""} \
      ~{if defined(sets_frequency_c) then ("-c " +  '"' + sets_frequency_c + '"') else ""} \
      ~{if defined(sets_frequency_g) then ("-g " +  '"' + sets_frequency_g + '"') else ""} \
      ~{if defined(sets_frequency_t) then ("-t " +  '"' + sets_frequency_t + '"') else ""}
  >>>
  parameter_meta {
    size: "base size to use for N50 statistics"
    one_x: "limit NG table to 1x coverage"
    split_n: "split sequences at N bases before computing length"
    simple: "output a simple 'length numSequences' histogram"
    lengths: "output a list of the sequence lengths"
    as_sequences: "load data as complete sequences (for testing)"
    as_bases: "load data as blocks of bases    (for testing)"
    bases: "baselist extract bases as specified in the 'list' from each sequence"
    sequences: "extract ordinal sequences as specified in the 'list'"
    reverse: "reverse the bases in the sequence"
    complement: "complement the bases in the sequence"
    rc: "alias for -reverse -complement"
    compress: "compress homopolymer runs to one base"
    up_case: ""
    down_case: ""
    length: "print sequence if it is at least 'min' bases and at most 'max' bases long\\na 'baselist' is a set of integers formed from any combination\\nof the following, seperated by a comma:\\nnum       a single number\\nbgn-end   a range of numbers:  bgn <= end\\nbases are spaced-based; -bases 0-2,4 will print the bases between\\nthe first two spaces (the first two bases) and the base after the\\nfourth space (the fifth base).\\na 'seqlist' is a set of integers formed from any combination\\nof the following, seperated by a comma:\\nnum       a single number\\nbgn-end   a range of numbers:  bgn <= end\\nsequences are 1-based; -sequences 1,3-5 will print the first, third,\\nfourth and fifth sequences."
    genome: "sample reads from these sequences"
    circular: "treat the sequences in G as circular"
    genome_size: "genome size to use for deciding coverage below"
    coverage: "generate approximately c coverage of output"
    n_reads: "generate exactly n reads of output"
    n_bases: "generate approximately n bases of output"
    distribution: "generate read length by sampling the distribution in file F\\none column  - each line is the length of a sequence\\ntwo columns - each line has the 'length' and 'number of sequences'\\nif file F doesn't exist, use a built-in distribution\\nultra-long-nanopore\\npacbio\\npacbio-hifi"
    not_implemented: "(not implemented)"
    paired: "treat inputs as paired sequences; the first two files form the\\nfirst pair, and so on."
    copies: "write C different copies of the sampling (without replacement)."
    reads: "output R reads."
    pairs: "output P pairs (only if -paired)."
    fraction: "output fraction F of the input bases."
    min: "minimum sequence length"
    max: "maximum sequence length"
    gaussian: "99.73% of the reads (3 standard deviations) will be between min and max"
    mirror: ""
    gc: "sets GC/AT composition (default 0.50)"
    at: "sets GC/AT composition (default 0.50)"
    sets_frequency_bases: "sets frequency of A bases (default 0.25)"
    sets_frequency_c: "sets frequency of C bases (default 0.25)"
    sets_frequency_g: "sets frequency of G bases (default 0.25)"
    sets_frequency_t: "sets frequency of T bases (default 0.25)"
  }
  output {
    File out_stdout = stdout()
  }
}