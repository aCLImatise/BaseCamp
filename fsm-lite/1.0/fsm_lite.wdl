version 1.0

task FsmLite {
  input {
    File? list
    File? tmp
    Int? min
    Int? max
    Int? freq
    Int? min_supp
    Int? max_supp
    Boolean? verbose
  }
  command <<<
    fsm-lite \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""} \
      ~{if defined(tmp) then ("--tmp " +  '"' + tmp + '"') else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(freq) then ("--freq " +  '"' + freq + '"') else ""} \
      ~{if defined(min_supp) then ("--minsupp " +  '"' + min_supp + '"') else ""} \
      ~{if defined(max_supp) then ("--maxsupp " +  '"' + max_supp + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    list: "Text file that lists all input files as whitespace-separated pairs  <data-name> <data-filename> where <data-name> is unique identifier (without whitespace) and <data-filename> is full path to each input file. Default data file format is FASTA (uncompressed)."
    tmp: "Store temporary index data"
    min: "Minimum length to report (default 9)"
    max: "Maximum length to report (default 100)"
    freq: "Minimum frequency per input file to report (default 1)"
    min_supp: "Minimum number of input files with support to report (default 2)"
    max_supp: "Maximum number of input files with support to report (default inf)"
    verbose: "Verbose output"
  }
}