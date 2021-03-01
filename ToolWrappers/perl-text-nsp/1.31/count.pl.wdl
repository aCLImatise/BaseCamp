version 1.0

task Countpl {
  input {
    Int? n_gram
    File? token
    File? non_token
    File? set_freq_combo
    File? get_freq_combo
    File? stop
    String? frequency
    Int? u_frequency
    String? remove
    Int? u_remove
    Boolean? new_line
    File? token_list
    File? histogram
    Boolean? recurse
    Boolean? extended
    Boolean? verbose
    String default_dot
  }
  command <<<
    count_pl \
      ~{default_dot} \
      ~{if defined(n_gram) then ("--ngram " +  '"' + n_gram + '"') else ""} \
      ~{if defined(token) then ("--token " +  '"' + token + '"') else ""} \
      ~{if defined(non_token) then ("--nontoken " +  '"' + non_token + '"') else ""} \
      ~{if defined(set_freq_combo) then ("--set_freq_combo " +  '"' + set_freq_combo + '"') else ""} \
      ~{if defined(get_freq_combo) then ("--get_freq_combo " +  '"' + get_freq_combo + '"') else ""} \
      ~{if defined(stop) then ("--stop " +  '"' + stop + '"') else ""} \
      ~{if defined(frequency) then ("--frequency " +  '"' + frequency + '"') else ""} \
      ~{if defined(u_frequency) then ("--ufrequency " +  '"' + u_frequency + '"') else ""} \
      ~{if defined(remove) then ("--remove " +  '"' + remove + '"') else ""} \
      ~{if defined(u_remove) then ("--uremove " +  '"' + u_remove + '"') else ""} \
      ~{if (new_line) then "--newLine" else ""} \
      ~{if (token_list) then "--tokenlist" else ""} \
      ~{if defined(histogram) then ("--histogram " +  '"' + histogram + '"') else ""} \
      ~{if (recurse) then "--recurse" else ""} \
      ~{if (extended) then "--extended" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    n_gram: "Creates n-grams of N tokens each. N = 2 by"
    token: "Uses regular expressions in FILE to create\\ntokens. By default two regular expressions\\nare provided (see README)."
    non_token: "Removes all characters sequences that match\\nPerl regular expressions specified in FILE."
    set_freq_combo: "Uses the frequency combinations in FILE to\\ndecide which combinations of tokens to\\ncount in a given n-gram. By default, all\\ncombinations are counted."
    get_freq_combo: "Prints out the frequency combinations used\\nto FILE. If frequency combinations have been\\nprovided through --set_freq_combo switch above\\nthese are output; otherwise the default\\ncombinations being used are output."
    stop: "Removes n-grams containing at least one (in\\nOR mode) or all stop words (in AND mode).\\nStop words should be declared as Perl Regular\\nexpressions in FILE."
    frequency: "Does not display n-grams that occur less\\nthan N times."
    u_frequency: "Does not display n-grams that occur more\\nthan N times. Default value is 100,000,000"
    remove: "Ignores n-grams that occur less than N\\ntimes. Ignored n-grams are not counted and\\nso do not affect counts and frequencies."
    u_remove: "Ignores n-grams that occur more than N\\ntimes. Ignored n-grams are not counted and\\nso do not affect counts and frequencies.\\nDefault value is 100,000,000."
    new_line: "Prevents n-grams from spanning across the\\nnew-line character."
    token_list: "Prints out all n-grams to the output file."
    histogram: "Outputs histogram to FILE. Tabulates how\\nmany times n-grams of a given frequency\\nhave occurred."
    recurse: "If SOURCE is a directory, uses all files\\nin SOURCE as well as all subdirectories of\\nSOURCE recursively as input."
    extended: "Outputs values of the above switches, if\\ndefault values are not used."
    verbose: "Outputs to stderr information about\\ncurrent program status."
    default_dot: "--window N         Sets window size to N. Defaults to n-gram"
  }
  output {
    File out_stdout = stdout()
    File out_get_freq_combo = "${in_get_freq_combo}"
    File out_token_list = "${in_token_list}"
  }
}