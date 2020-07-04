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
      ~{true="--inFile" false="" in_file} \
      ~{true="--minL" false="" min_l} \
      ~{true="--recycle" false="" recycle} \
      ~{true="--ascii" false="" ascii} \
      ~{true="--minQ" false="" min_q} \
      ~{true="--threads" false="" threads} \
      ~{true="--outPath" false="" out_path} \
      ~{true="--prefix" false="" prefix} \
      ~{true="--outEncoding" false="" out_encoding} \
      ~{true="--stats" false="" stats} \
      ~{true="--histo" false="" histo} \
      ~{true="--sortLenAsc" false="" sort_lena_sc} \
      ~{true="--sortLenDesc" false="" sort_len_desc} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    in_file: "=        string   Name of the FASTQ file containing all the single-end reads"
    min_l: "=          int      Minimum length for a trimmed read to be considered valid [default: 0]"
    recycle: "bool     When --fixL is specified and a read length is not a multiple of \"fixL\", this option will append any remaining bases (up to the maximum fixL-1 bases) to the last fragment of length \"fixL\" [default: false]"
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
}