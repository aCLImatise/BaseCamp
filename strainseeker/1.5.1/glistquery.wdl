version 1.0

task Glistquery {
  input {
    Boolean? stat
    Boolean? query
    Boolean? query_file
    Boolean? seq_file
    Boolean? list_file
    String? mismatch
    String? perfect_match
    String? min_freq
    String? max_freq
    Boolean? all
    Boolean? increase_debug_level
    String input_list
  }
  command <<<
    glistquery \
      ~{input_list} \
      ~{true="-stat" false="" stat} \
      ~{true="--query" false="" query} \
      ~{true="--queryfile" false="" query_file} \
      ~{true="--seqfile" false="" seq_file} \
      ~{true="--listfile" false="" list_file} \
      ~{if defined(mismatch) then ("--mismatch " +  '"' + mismatch + '"') else ""} \
      ~{if defined(perfect_match) then ("--perfectmatch " +  '"' + perfect_match + '"') else ""} \
      ~{if defined(min_freq) then ("--minfreq " +  '"' + min_freq + '"') else ""} \
      ~{if defined(max_freq) then ("--maxfreq " +  '"' + max_freq + '"') else ""} \
      ~{true="-all" false="" all} \
      ~{true="-D" false="" increase_debug_level}
  >>>
  parameter_meta {
    stat: "- print statistics of the list file and exit"
    query: "- single query word"
    query_file: "- list of query words in a file"
    seq_file: "- FastA/FastQ file"
    list_file: "- list file made by glistmaker"
    mismatch: "- specify number of mismatches (default 0, can be used with -d and -dd)"
    perfect_match: "- specify number of 3' perfect matches (default 0)"
    min_freq: "- minimum frequency of the printed words (default 0)"
    max_freq: "- maximum frequency of the printed words (default MAX_UINT)"
    all: "- in case of mismatches prints all found words"
    increase_debug_level: "- increase debug level"
    input_list: ""
  }
}