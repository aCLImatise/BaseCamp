version 1.0

task ArtIllumina {
  input {
    Boolean? _qprof_firstread
    Boolean? _qprof_secondread
    String? amplicon
    Boolean? _rcount_number
    Boolean? _i_d
    Boolean? err_free
    Boolean? _fcov_fold
    Boolean? _filename_input
    Boolean? ins_rate
    Int? ins_rate_two
    Boolean? del_rate
    Int? del_rate_two
    Boolean? _maximum_total
    Boolean? _len_length
    Boolean? _mflen_size
    String? mate_pair
    Boolean? cigar_m
    Boolean? mask_n
    File? no_aln
    File? _prefix_output
    Boolean? _paired_indicate
    Boolean? quiet_turn_end
    Boolean? min_q
    Boolean? maxq
    Boolean? q_shift
    Boolean? q_shift_two
    Boolean? rnd_seed
    Boolean? _sdev_deviation
    Boolean? sam_out
    Boolean? sep_prof
    Boolean? seq_sys
  }
  command <<<
    art_illumina \
      ~{if (_qprof_firstread) then "-1" else ""} \
      ~{if (_qprof_secondread) then "-2" else ""} \
      ~{if defined(amplicon) then ("--amplicon " +  '"' + amplicon + '"') else ""} \
      ~{if (_rcount_number) then "-c" else ""} \
      ~{if (_i_d) then "-d" else ""} \
      ~{if (err_free) then "--errfree" else ""} \
      ~{if (_fcov_fold) then "-f" else ""} \
      ~{if (_filename_input) then "-i" else ""} \
      ~{if (ins_rate) then "--insRate" else ""} \
      ~{if defined(ins_rate_two) then ("--insRate2 " +  '"' + ins_rate_two + '"') else ""} \
      ~{if (del_rate) then "--delRate" else ""} \
      ~{if defined(del_rate_two) then ("--delRate2 " +  '"' + del_rate_two + '"') else ""} \
      ~{if (_maximum_total) then "-k" else ""} \
      ~{if (_len_length) then "-l" else ""} \
      ~{if (_mflen_size) then "-m" else ""} \
      ~{if defined(mate_pair) then ("--matepair " +  '"' + mate_pair + '"') else ""} \
      ~{if (cigar_m) then "--cigarM" else ""} \
      ~{if (mask_n) then "--maskN" else ""} \
      ~{if (no_aln) then "--noALN" else ""} \
      ~{if (_prefix_output) then "-o" else ""} \
      ~{if (_paired_indicate) then "-p" else ""} \
      ~{if (quiet_turn_end) then "-q" else ""} \
      ~{if (min_q) then "--minQ" else ""} \
      ~{if (maxq) then "--maxQ" else ""} \
      ~{if (q_shift) then "--qShift" else ""} \
      ~{if (q_shift_two) then "--qShift2" else ""} \
      ~{if (rnd_seed) then "--rndSeed" else ""} \
      ~{if (_sdev_deviation) then "-s" else ""} \
      ~{if (sam_out) then "--samout" else ""} \
      ~{if (sep_prof) then "--sepProf" else ""} \
      ~{if (seq_sys) then "--seqSys" else ""}
  >>>
  parameter_meta {
    _qprof_firstread: "--qprof1   the first-read quality profile"
    _qprof_secondread: "--qprof2   the second-read quality profile"
    amplicon: "sequencing simulation"
    _rcount_number: "--rcount   number of reads/read pairs to be generated per sequence/amplicon (not be used together with -f/--fcov)"
    _i_d: "--id       the prefix identification tag for read ID"
    err_free: "indicate to generate the zero sequencing errors SAM file as well the regular one\\nNOTE: the reads in the zero-error SAM file have the same alignment positions\\nas those in the regular SAM file, but have no sequencing errors"
    _fcov_fold: "--fcov     the fold of read coverage to be simulated or number of reads/read pairs generated for each amplicon"
    _filename_input: "--in       the filename of input DNA/RNA reference"
    ins_rate: "the first-read insertion rate (default: 0.00009)"
    ins_rate_two: "second-read insertion rate (default: 0.00015)"
    del_rate: "the first-read deletion rate (default:  0.00011)"
    del_rate_two: "second-read deletion rate (default: 0.00023)"
    _maximum_total: "--maxIndel the maximum total number of insertion and deletion per read (default: up to read length)"
    _len_length: "--len      the length of reads to be simulated"
    _mflen_size: "--mflen    the mean size of DNA/RNA fragments for paired-end simulations"
    mate_pair: "a mate-pair read simulation"
    cigar_m: "indicate to use CIGAR 'M' instead of '=/X' for alignment match/mismatch"
    mask_n: "the cutoff frequency of 'N' in a window size of the read length for masking genomic regions\\nNOTE: default: '-nf 1' to mask all regions with 'N'. Use '-nf 0' to turn off masking"
    no_aln: "do not output ALN alignment file"
    _prefix_output: "--out      the prefix of output filename"
    _paired_indicate: "--paired   indicate a paired-end read simulation or to generate reads from both ends of amplicons\\nNOTE: art will automatically switch to a mate-pair simulation if the given mean fragment size >= 2000"
    quiet_turn_end: "--quiet    turn off end of run summary"
    min_q: "the minimum base quality score"
    maxq: "the maxiumum base quality score"
    q_shift: "the amount to shift every first-read quality score by"
    q_shift_two: "the amount to shift every second-read quality score by\\nNOTE: For -qs/-qs2 option, a positive number will shift up quality scores (the max is 93)\\nthat reduce substitution sequencing errors and a negative number will shift down\\nquality scores that increase sequencing errors. If shifting scores by x, the error\\nrate will be 1/(10^(x/10)) of the default profile."
    rnd_seed: "the seed for random number generator (default: system time in second)\\nNOTE: using a fixed seed to generate two identical datasets from different runs"
    _sdev_deviation: "--sdev     the standard deviation of DNA/RNA fragment size for paired-end simulations."
    sam_out: "indicate to generate SAM alignment file"
    sep_prof: "indicate to use separate quality profiles for different bases (ATGC)"
    seq_sys: "The name of Illumina sequencing system of the built-in profile used for simulation\\nNOTE: sequencing system ID names are:\\nGA1 - GenomeAnalyzer I (36bp,44bp), GA2 - GenomeAnalyzer II (50bp, 75bp)\\nHS10 - HiSeq 1000 (100bp),          HS20 - HiSeq 2000 (100bp),      HS25 - HiSeq 2500 (125bp, 150bp)\\nHSXn - HiSeqX PCR free (150bp),     HSXt - HiSeqX TruSeq (150bp),   MinS - MiniSeq TruSeq (50bp)\\nMSv1 - MiSeq v1 (250bp),            MSv3 - MiSeq v3 (250bp),        NS50 - NextSeq500 v2 (75bp)"
  }
  output {
    File out_stdout = stdout()
    File out_no_aln = "${in_no_aln}"
    File out__prefix_output = "${in__prefix_output}"
  }
}