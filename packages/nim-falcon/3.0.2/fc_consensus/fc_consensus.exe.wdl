version 1.0

task FcConsensusexe {
  input {
    Boolean? _mincov_coverage
    Boolean? max_cov_aln
    Boolean? min_len_aln
    Boolean? min_n_read
    Boolean? max_n_read
    Boolean? trim
    Boolean? output_full
    Boolean? output_multi
    Boolean? min_idt
    Boolean? _edgetolerance_int
    Boolean? trim_size
    Boolean? _ncore_int
    String consensus
  }
  command <<<
    fc_consensus_exe \
      ~{consensus} \
      ~{if (_mincov_coverage) then "-m" else ""} \
      ~{if (max_cov_aln) then "--max_cov_aln" else ""} \
      ~{if (min_len_aln) then "--min_len_aln" else ""} \
      ~{if (min_n_read) then "--min_n_read" else ""} \
      ~{if (max_n_read) then "--max_n_read" else ""} \
      ~{if (trim) then "--trim" else ""} \
      ~{if (output_full) then "--output_full" else ""} \
      ~{if (output_multi) then "--output_multi" else ""} \
      ~{if (min_idt) then "--min_idt" else ""} \
      ~{if (_edgetolerance_int) then "-e" else ""} \
      ~{if (trim_size) then "--trim_size" else ""} \
      ~{if (_ncore_int) then "-n" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nim-falcon:3.0.2--h1341992_0"
  }
  parameter_meta {
    _mincov_coverage: "=, --min_cov=         int     6       minimum coverage to break the"
    max_cov_aln: "=          int     0       maximum coverage of alignment data; a\\nseed read with more than MAX_COV_ALN\\naverage depth of coverage of the\\nlongest alignments will be capped,\\nexcess shorter alignments will be\\nignored"
    min_len_aln: "=          int     0       minimum length of a sequence in an\\nalignment to be used in consensus; any\\nshorter sequence will be completely\\nignored"
    min_n_read: "=           int     10      1 + minimum number of reads used in\\ngenerating the consensus; a seed read\\nwith fewer alignments will be\\ncompletely ignored"
    max_n_read: "=           int     500     1 + maximum number of reads used in\\ngenerating the consensus"
    trim: "bool    false   trim the input sequence with k-mer\\nspare dynamic programming to find the\\nmapped range"
    output_full: "bool    false   output uncorrected regions too"
    output_multi: "bool    false   output multiple correct regions"
    min_idt: "=              string  \\\"0.70\\\"  minimum identity of the alignments\\nused for correction (32-bit float)"
    _edgetolerance_int: "=, --edge_tolerance=  int     1000    for trimming, the there is unaligned\\nedge leng > edge_tolerance, ignore the\\nread"
    trim_size: "=            int     50      the size for triming both ends from\\ninitial sparse aligned region"
    _ncore_int: "=, --n_core=          int     24      number of processes used for\\ngenerating consensus (not sure this\\nlimit works yet); 0 for main process\\nonly\\n"
    consensus: "--min_cov_aln=          int     10      minimum coverage of alignment data; a"
  }
  output {
    File out_stdout = stdout()
  }
}