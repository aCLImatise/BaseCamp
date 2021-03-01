version 1.0

task Splitrim {
  input {
    Boolean? in_file
    Boolean? min_l
    Boolean? recycle
    Boolean? ascii
    Boolean? min_q
    Boolean? threads
    Boolean? out_path
    Boolean? prefix
    Boolean? out_encoding
    Boolean? stats
    Boolean? histo
    Boolean? sort_lena_sc
    Boolean? sort_len_desc
    Boolean? verbose
    String? var_input
    String? var_output
    String? others
  }
  command <<<
    splitrim \
      ~{var_input} \
      ~{var_output} \
      ~{others} \
      ~{if (in_file) then "--inFile" else ""} \
      ~{if (min_l) then "--minL" else ""} \
      ~{if (recycle) then "--recycle" else ""} \
      ~{if (ascii) then "--ascii" else ""} \
      ~{if (min_q) then "--minQ" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (out_path) then "--outPath" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (out_encoding) then "--outEncoding" else ""} \
      ~{if (stats) then "--stats" else ""} \
      ~{if (histo) then "--histo" else ""} \
      ~{if (sort_lena_sc) then "--sortLenAsc" else ""} \
      ~{if (sort_len_desc) then "--sortLenDesc" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_file: "=        string   Name of the FASTQ file containing all the single-end reads"
    min_l: "=          int      Minimum length for a trimmed read to be considered valid [default: 0]"
    recycle: "bool     When --fixL is specified and a read length is not a multiple of \\\"fixL\\\", this option will append any\\nremaining bases (up to the maximum fixL-1 bases) to the last fragment of length \\\"fixL\\\" [default: false]"
    ascii: "=         int      ASCII encoding (33 or 64) [default: 33]"
    min_q: "=          int      Minimum quality for a read to be considered valid (0-41) [default: 10]"
    threads: "=   uint     <disabled> no. of threads to use [1]"
    out_path: "=       string   Location output files will be placed"
    prefix: "=        string   Prefix of output files"
    out_encoding: "=   int      ASCII encoding of the output (33 or 64) [default: mirrors input]"
    stats: "=         string   Basic read statistics output [default: uses basename from --inFile]"
    histo: "=         string   Post-trim read length histogram [default: uses basename from --inFile]"
    sort_lena_sc: "bool     Sort read length frequency table in ascending order [default: unordered]"
    sort_len_desc: "bool     Sort read length frequency table in descending order [default: unordered]"
    verbose: "bool     verbosity level"
    var_input: ""
    var_output: ""
    others: ""
  }
  output {
    File out_stdout = stdout()
  }
}