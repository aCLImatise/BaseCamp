version 1.0

task Fsmlite {
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
    fsm_lite \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""} \
      ~{if defined(tmp) then ("--tmp " +  '"' + tmp + '"') else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(freq) then ("--freq " +  '"' + freq + '"') else ""} \
      ~{if defined(min_supp) then ("--minsupp " +  '"' + min_supp + '"') else ""} \
      ~{if defined(max_supp) then ("--maxsupp " +  '"' + max_supp + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    list: "Text file that lists all input files as whitespace-separated pairs\\n<data-name> <data-filename>\\nwhere <data-name> is unique identifier (without whitespace)\\nand <data-filename> is full path to each input file.\\nDefault data file format is FASTA (uncompressed)."
    tmp: "Store temporary index data"
    min: "Minimum length to report (default 9)"
    max: "Maximum length to report (default 100)"
    freq: "Minimum frequency per input file to report (default 1)"
    min_supp: "Minimum number of input files with support to report (default 2)"
    max_supp: "Maximum number of input files with support to report (default inf)"
    verbose: "Verbose output"
  }
  output {
    File out_stdout = stdout()
  }
}