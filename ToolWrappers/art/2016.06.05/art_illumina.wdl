version 1.0

task ArtIllumina {
  input {
    Boolean? qpr_of_one
    Boolean? qpr_of_two
    String? amplicon
    Boolean? rcount
    Boolean? id
    Boolean? err_free
    Boolean? f_cov
    Boolean? in
    Boolean? ins_rate
    Int? ins_rate_two
    Boolean? del_rate
    Int? del_rate_two
    Int? max_in_del
    Boolean? len
    Boolean? mf_len
    String? mate_pair
    Boolean? cigar_m
    Boolean? mask_n
    File? no_aln
    File? out
    Boolean? paired
    Boolean? quiet
    Boolean? min_q
    Boolean? maxq
    Boolean? q_shift
    Boolean? q_shift_two
    Boolean? rnd_seed
    Boolean? sdev
    Boolean? sam_out
    Boolean? sep_prof
    Boolean? seq_sys
  }
  command <<<
    art_illumina \
      ~{if (qpr_of_one) then "--qprof1" else ""} \
      ~{if (qpr_of_two) then "--qprof2" else ""} \
      ~{if defined(amplicon) then ("--amplicon " +  '"' + amplicon + '"') else ""} \
      ~{if (rcount) then "--rcount" else ""} \
      ~{if (id) then "--id" else ""} \
      ~{if (err_free) then "--errfree" else ""} \
      ~{if (f_cov) then "--fcov" else ""} \
      ~{if (in) then "--in" else ""} \
      ~{if (ins_rate) then "--insRate" else ""} \
      ~{if defined(ins_rate_two) then ("--insRate2 " +  '"' + ins_rate_two + '"') else ""} \
      ~{if (del_rate) then "--delRate" else ""} \
      ~{if defined(del_rate_two) then ("--delRate2 " +  '"' + del_rate_two + '"') else ""} \
      ~{if defined(max_in_del) then ("--maxIndel " +  '"' + max_in_del + '"') else ""} \
      ~{if (len) then "--len" else ""} \
      ~{if (mf_len) then "--mflen" else ""} \
      ~{if defined(mate_pair) then ("--matepair " +  '"' + mate_pair + '"') else ""} \
      ~{if (cigar_m) then "--cigarM" else ""} \
      ~{if (mask_n) then "--maskN" else ""} \
      ~{if (no_aln) then "--noALN" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (paired) then "--paired" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (min_q) then "--minQ" else ""} \
      ~{if (maxq) then "--maxQ" else ""} \
      ~{if (q_shift) then "--qShift" else ""} \
      ~{if (q_shift_two) then "--qShift2" else ""} \
      ~{if (rnd_seed) then "--rndSeed" else ""} \
      ~{if (sdev) then "--sdev" else ""} \
      ~{if (sam_out) then "--samout" else ""} \
      ~{if (sep_prof) then "--sepProf" else ""} \
      ~{if (seq_sys) then "--seqSys" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    qpr_of_one: "the first-read quality profile"
    qpr_of_two: "the second-read quality profile"
    amplicon: "sequencing simulation"
    rcount: "number of reads/read pairs to be generated per sequence/amplicon (not be used together with -f/--fcov)"
    id: "the prefix identification tag for read ID"
    err_free: "indicate to generate the zero sequencing errors SAM file as well the regular one\\nNOTE: the reads in the zero-error SAM file have the same alignment positions\\nas those in the regular SAM file, but have no sequencing errors"
    f_cov: "the fold of read coverage to be simulated or number of reads/read pairs generated for each amplicon"
    in: "the filename of input DNA/RNA reference"
    ins_rate: "the first-read insertion rate (default: 0.00009)"
    ins_rate_two: "second-read insertion rate (default: 0.00015)"
    del_rate: "the first-read deletion rate (default:  0.00011)"
    del_rate_two: "second-read deletion rate (default: 0.00023)"
    max_in_del: "maximum total number of insertion and deletion per read (default: up to read length)"
    len: "the length of reads to be simulated"
    mf_len: "the mean size of DNA/RNA fragments for paired-end simulations"
    mate_pair: "a mate-pair read simulation"
    cigar_m: "indicate to use CIGAR 'M' instead of '=/X' for alignment match/mismatch"
    mask_n: "the cutoff frequency of 'N' in a window size of the read length for masking genomic regions\\nNOTE: default: '-nf 1' to mask all regions with 'N'. Use '-nf 0' to turn off masking"
    no_aln: "do not output ALN alignment file"
    out: "the prefix of output filename"
    paired: "indicate a paired-end read simulation or to generate reads from both ends of amplicons\\nNOTE: art will automatically switch to a mate-pair simulation if the given mean fragment size >= 2000"
    quiet: "turn off end of run summary"
    min_q: "the minimum base quality score"
    maxq: "the maxiumum base quality score"
    q_shift: "the amount to shift every first-read quality score by"
    q_shift_two: "the amount to shift every second-read quality score by\\nNOTE: For -qs/-qs2 option, a positive number will shift up quality scores (the max is 93)\\nthat reduce substitution sequencing errors and a negative number will shift down\\nquality scores that increase sequencing errors. If shifting scores by x, the error\\nrate will be 1/(10^(x/10)) of the default profile."
    rnd_seed: "the seed for random number generator (default: system time in second)\\nNOTE: using a fixed seed to generate two identical datasets from different runs"
    sdev: "the standard deviation of DNA/RNA fragment size for paired-end simulations."
    sam_out: "indicate to generate SAM alignment file"
    sep_prof: "indicate to use separate quality profiles for different bases (ATGC)"
    seq_sys: "The name of Illumina sequencing system of the built-in profile used for simulation\\nNOTE: sequencing system ID names are:\\nGA1 - GenomeAnalyzer I (36bp,44bp), GA2 - GenomeAnalyzer II (50bp, 75bp)\\nHS10 - HiSeq 1000 (100bp),          HS20 - HiSeq 2000 (100bp),      HS25 - HiSeq 2500 (125bp, 150bp)\\nHSXn - HiSeqX PCR free (150bp),     HSXt - HiSeqX TruSeq (150bp),   MinS - MiniSeq TruSeq (50bp)\\nMSv1 - MiSeq v1 (250bp),            MSv3 - MiSeq v3 (250bp),        NS50 - NextSeq500 v2 (75bp)"
  }
  output {
    File out_stdout = stdout()
    File out_no_aln = "${in_no_aln}"
    File out_out = "${in_out}"
  }
}