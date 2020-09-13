version 1.0

task Glistquery {
  input {
    Boolean? stat
    Boolean? median
    Int? distribution
    Boolean? gc
    Boolean? query
    Boolean? query_file
    Boolean? seq_file
    Boolean? list_file
    Int? mismatch
    Int? perfect_match
    Int? min_freq
    Int? max_freq
    Boolean? all
    Boolean? increase_debug_level
    String input_list
  }
  command <<<
    glistquery \
      ~{input_list} \
      ~{if (stat) then "-stat" else ""} \
      ~{if (median) then "-median" else ""} \
      ~{if defined(distribution) then ("-distribution " +  '"' + distribution + '"') else ""} \
      ~{if (gc) then "-gc" else ""} \
      ~{if (query) then "--query" else ""} \
      ~{if (query_file) then "--queryfile" else ""} \
      ~{if (seq_file) then "--seqfile" else ""} \
      ~{if (list_file) then "--listfile" else ""} \
      ~{if defined(mismatch) then ("--mismatch " +  '"' + mismatch + '"') else ""} \
      ~{if defined(perfect_match) then ("--perfectmatch " +  '"' + perfect_match + '"') else ""} \
      ~{if defined(min_freq) then ("--minfreq " +  '"' + min_freq + '"') else ""} \
      ~{if defined(max_freq) then ("--maxfreq " +  '"' + max_freq + '"') else ""} \
      ~{if (all) then "-all" else ""} \
      ~{if (increase_debug_level) then "-D" else ""}
  >>>
  parameter_meta {
    stat: "- print statistics of the list file and exit"
    median: "- print min/max/median/average and exit"
    distribution: "- print distribution up to MAX"
    gc: "- print average GC content of all words"
    query: "- single query word"
    query_file: "- list of query words in a file"
    seq_file: "- FastA/FastQ file"
    list_file: "- list file made by glistmaker"
    mismatch: "- specify number of mismatches (default 0)"
    perfect_match: "- specify number of 3' perfect matches (default 0)"
    min_freq: "- minimum frequency of the printed words (default 0)"
    max_freq: "- maximum frequency of the printed words (default MAX_UINT)"
    all: "- in case of mismatches prints all found words"
    increase_debug_level: "- increase debug level"
    input_list: ""
  }
  output {
    File out_stdout = stdout()
  }
}