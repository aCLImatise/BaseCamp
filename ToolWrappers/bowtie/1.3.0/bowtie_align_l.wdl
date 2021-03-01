version 1.0

task Bowtiealignl {
  input {
    Boolean? query_input_files_fastq
    Boolean? query_input_files_multifasta
    Int? intiint_query_input
    Boolean? query_input_files_raw
    Boolean? query_sequences_given
    File? quals
    File? q_one
    Int? skip
    Int? q_up_to
    Int? trim_five
    Int? trim_three
    Boolean? phred_three_three_quals
    Boolean? phred_six_four_quals
    Boolean? solexa_quals
    Boolean? solexa_one_dot_three_quals
    Boolean? integer_quals
    Int? report_endtoend_hits
    Int? maq_err
    Int? seed_len
    Boolean? no_maq_round
    Int? mini_ns
    Int? max_ins
    String? fr
    Boolean? no_fw
    Int? max_bts
    Int? pair_tries
    Boolean? try_hard
    Int? chunk_mbs
    Boolean? reads_per_batch
    Int? report_int_alignments
    Boolean? all
    Int? suppress_alignments_exist
    Int? m_reports_random
    Boolean? best
    Boolean? strata
    Boolean? time
    Int? off_base
    Boolean? quiet
    Boolean? ref_idx
    File? al
    File? un
    Boolean? no_unal
    Int? max
    String? suppress
    Boolean? full_ref
    Boolean? sam
    Int? mapq
    Boolean? sam_no_head
    Boolean? sam_no_sq
    String? sam_rg
    Int? off_rate
    Int? threads
    Boolean? mm
    Boolean? shmem
    Int? seed
    Boolean? verbose
    String or
  }
  command <<<
    bowtie_align_l \
      ~{or} \
      ~{if (query_input_files_fastq) then "-q" else ""} \
      ~{if (query_input_files_multifasta) then "-f" else ""} \
      ~{if defined(intiint_query_input) then ("-F " +  '"' + intiint_query_input + '"') else ""} \
      ~{if (query_input_files_raw) then "-r" else ""} \
      ~{if (query_sequences_given) then "-c" else ""} \
      ~{if defined(quals) then ("--quals " +  '"' + quals + '"') else ""} \
      ~{if defined(q_one) then ("--Q1 " +  '"' + q_one + '"') else ""} \
      ~{if defined(skip) then ("--skip " +  '"' + skip + '"') else ""} \
      ~{if defined(q_up_to) then ("--qupto " +  '"' + q_up_to + '"') else ""} \
      ~{if defined(trim_five) then ("--trim5 " +  '"' + trim_five + '"') else ""} \
      ~{if defined(trim_three) then ("--trim3 " +  '"' + trim_three + '"') else ""} \
      ~{if (phred_three_three_quals) then "--phred33-quals" else ""} \
      ~{if (phred_six_four_quals) then "--phred64-quals" else ""} \
      ~{if (solexa_quals) then "--solexa-quals" else ""} \
      ~{if (solexa_one_dot_three_quals) then "--solexa1.3-quals" else ""} \
      ~{if (integer_quals) then "--integer-quals" else ""} \
      ~{if defined(report_endtoend_hits) then ("-v " +  '"' + report_endtoend_hits + '"') else ""} \
      ~{if defined(maq_err) then ("--maqerr " +  '"' + maq_err + '"') else ""} \
      ~{if defined(seed_len) then ("--seedlen " +  '"' + seed_len + '"') else ""} \
      ~{if (no_maq_round) then "--nomaqround" else ""} \
      ~{if defined(mini_ns) then ("--minins " +  '"' + mini_ns + '"') else ""} \
      ~{if defined(max_ins) then ("--maxins " +  '"' + max_ins + '"') else ""} \
      ~{if defined(fr) then ("--fr " +  '"' + fr + '"') else ""} \
      ~{if (no_fw) then "--nofw" else ""} \
      ~{if defined(max_bts) then ("--maxbts " +  '"' + max_bts + '"') else ""} \
      ~{if defined(pair_tries) then ("--pairtries " +  '"' + pair_tries + '"') else ""} \
      ~{if (try_hard) then "--tryhard" else ""} \
      ~{if defined(chunk_mbs) then ("--chunkmbs " +  '"' + chunk_mbs + '"') else ""} \
      ~{if (reads_per_batch) then "--reads-per-batch" else ""} \
      ~{if defined(report_int_alignments) then ("-k " +  '"' + report_int_alignments + '"') else ""} \
      ~{if (all) then "--all" else ""} \
      ~{if defined(suppress_alignments_exist) then ("-m " +  '"' + suppress_alignments_exist + '"') else ""} \
      ~{if defined(m_reports_random) then ("-M " +  '"' + m_reports_random + '"') else ""} \
      ~{if (best) then "--best" else ""} \
      ~{if (strata) then "--strata" else ""} \
      ~{if (time) then "--time" else ""} \
      ~{if defined(off_base) then ("--offbase " +  '"' + off_base + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (ref_idx) then "--refidx" else ""} \
      ~{if defined(al) then ("--al " +  '"' + al + '"') else ""} \
      ~{if defined(un) then ("--un " +  '"' + un + '"') else ""} \
      ~{if (no_unal) then "--no-unal" else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(suppress) then ("--suppress " +  '"' + suppress + '"') else ""} \
      ~{if (full_ref) then "--fullref" else ""} \
      ~{if (sam) then "--sam" else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""} \
      ~{if (sam_no_head) then "--sam-nohead" else ""} \
      ~{if (sam_no_sq) then "--sam-nosq" else ""} \
      ~{if defined(sam_rg) then ("--sam-RG " +  '"' + sam_rg + '"') else ""} \
      ~{if defined(off_rate) then ("--offrate " +  '"' + off_rate + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (mm) then "--mm" else ""} \
      ~{if (shmem) then "--shmem" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bowtie:1.3.0--py38hed8969a_1"
  }
  parameter_meta {
    query_input_files_fastq: "query input files are FASTQ .fq/.fastq (default)"
    query_input_files_multifasta: "query input files are (multi-)FASTA .fa/.mfa"
    intiint_query_input: ":<int>,i:<int> query input files are continuous FASTA where reads\\nare substrings (k-mers) extracted from a FASTA file <s>\\nand aligned at offsets 1, 1+i, 1+2i ... end of reference"
    query_input_files_raw: "query input files are raw one-sequence-per-line"
    query_sequences_given: "query sequences given on cmd line (as <mates>, <singles>)"
    quals: "QV file(s) corresponding to CSFASTA inputs; use with -f -C"
    q_one: "same as -Q, but for mate files 1 and 2 respectively"
    skip: "skip the first <int> reads/pairs in the input"
    q_up_to: "stop after first <int> reads/pairs (excl. skipped reads)"
    trim_five: "trim <int> bases from 5' (left) end of reads"
    trim_three: "trim <int> bases from 3' (right) end of reads"
    phred_three_three_quals: "input quals are Phred+33 (default)"
    phred_six_four_quals: "input quals are Phred+64 (same as --solexa1.3-quals)"
    solexa_quals: "input quals are from GA Pipeline ver. < 1.3"
    solexa_one_dot_three_quals: "input quals are from GA Pipeline ver. >= 1.3"
    integer_quals: "qualities are given as space-separated integers (not ASCII)"
    report_endtoend_hits: "report end-to-end hits w/ <=v mismatches; ignore qualities"
    maq_err: "max sum of mismatch quals across alignment for -n (def: 70)"
    seed_len: "seed length for -n (default: 28)"
    no_maq_round: "disable Maq-like quality rounding for -n (nearest 10 <= 30)"
    mini_ns: "minimum insert size for paired-end alignment (default: 0)"
    max_ins: "maximum insert size for paired-end alignment (default: 250)"
    fr: "align fw/rev, rev/fw, fw/fw (default: --fr)"
    no_fw: "do not align to forward/reverse-complement reference strand"
    max_bts: "max # backtracks for -n 2/3 (default: 125, 800 for --best)"
    pair_tries: "max # attempts to find mate for anchor hit (default: 100)"
    try_hard: "try hard to find valid alignments, at the expense of speed"
    chunk_mbs: "max megabytes of RAM for best-first search frames (def: 64)"
    reads_per_batch: "# of reads to read from input file at once (default: 16)"
    report_int_alignments: "report up to <int> good alignments per read (default: 1)"
    all: "report all alignments per read (much slower than low -k)"
    suppress_alignments_exist: "suppress all alignments if > <int> exist (def: no limit)"
    m_reports_random: "like -m, but reports 1 random hit (MAPQ=0); requires --best"
    best: "hits guaranteed best stratum; ties broken by quality"
    strata: "hits in sub-optimal strata aren't reported (requires --best)"
    time: "print wall-clock time taken by search phases"
    off_base: "leftmost ref offset = <int> in bowtie output (default: 0)"
    quiet: "print nothing but the alignments"
    ref_idx: "refer to ref. seqs by 0-based index rather than name"
    al: "write aligned reads/pairs to file(s) <fname>"
    un: "write unaligned reads/pairs to file(s) <fname>"
    no_unal: "suppress SAM records for unaligned reads"
    max: "write reads/pairs over -m limit to file(s) <fname>"
    suppress: "suppresses given columns (comma-delim'ed) in default output"
    full_ref: "write entire ref name (default: only up to 1st space)"
    sam: "write hits in SAM format"
    mapq: "default mapping quality (MAPQ) to print for SAM alignments"
    sam_no_head: "supppress header lines (starting with @) for SAM output"
    sam_no_sq: "supppress @SQ header lines for SAM output"
    sam_rg: "add <text> (usually \\\"lab=value\\\") to @RG line of SAM header"
    off_rate: "override offrate of index; must be >= index's offrate"
    threads: "number of alignment threads to launch (default: 1)"
    mm: "use memory-mapped I/O for index; many 'bowtie's can share"
    shmem: "use shared mem for index; many 'bowtie's can share"
    seed: "seed for random number generator"
    verbose: "verbose output (for debugging)"
    or: "-n/--seedmms <int> max mismatches in seed (can be 0-3, default: -n 2)"
  }
  output {
    File out_stdout = stdout()
  }
}