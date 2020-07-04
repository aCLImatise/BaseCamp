version 1.0

task Count.pl {
  input {
    String? n_gram
    String? window
    File? token
    File? non_token
    File? set_freq_combo
    File? get_freq_combo
    File? stop
    String? frequency
    String? u_frequency
    String? remove
    String? u_remove
    Boolean? new_line
    Boolean? token_list
    File? histogram
    Boolean? recurse
    Boolean? extended
    Boolean? verbose
    String destination
    String source
  }
  command <<<
    count.pl \
      ~{destination} \
      ~{source} \
      ~{if defined(n_gram) then ("--ngram " +  '"' + n_gram + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(token) then ("--token " +  '"' + token + '"') else ""} \
      ~{if defined(non_token) then ("--nontoken " +  '"' + non_token + '"') else ""} \
      ~{if defined(set_freq_combo) then ("--set_freq_combo " +  '"' + set_freq_combo + '"') else ""} \
      ~{if defined(get_freq_combo) then ("--get_freq_combo " +  '"' + get_freq_combo + '"') else ""} \
      ~{if defined(stop) then ("--stop " +  '"' + stop + '"') else ""} \
      ~{if defined(frequency) then ("--frequency " +  '"' + frequency + '"') else ""} \
      ~{if defined(u_frequency) then ("--ufrequency " +  '"' + u_frequency + '"') else ""} \
      ~{if defined(remove) then ("--remove " +  '"' + remove + '"') else ""} \
      ~{if defined(u_remove) then ("--uremove " +  '"' + u_remove + '"') else ""} \
      ~{true="--newLine" false="" new_line} \
      ~{true="--tokenlist" false="" token_list} \
      ~{if defined(histogram) then ("--histogram " +  '"' + histogram + '"') else ""} \
      ~{true="--recurse" false="" recurse} \
      ~{true="--extended" false="" extended} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    n_gram: "Creates n-grams of N tokens each. N = 2 by default."
    window: "Sets window size to N. Defaults to n-gram size above."
    token: "Uses regular expressions in FILE to create tokens. By default two regular expressions are provided (see README)."
    non_token: "Removes all characters sequences that match Perl regular expressions specified in FILE."
    set_freq_combo: "Uses the frequency combinations in FILE to decide which combinations of tokens to count in a given n-gram. By default, all combinations are counted."
    get_freq_combo: "Prints out the frequency combinations used to FILE. If frequency combinations have been provided through --set_freq_combo switch above these are output; otherwise the default combinations being used are output."
    stop: "Removes n-grams containing at least one (in OR mode) or all stop words (in AND mode). Stop words should be declared as Perl Regular expressions in FILE."
    frequency: "Does not display n-grams that occur less than N times."
    u_frequency: "Does not display n-grams that occur more than N times. Default value is 100,000,000"
    remove: "Ignores n-grams that occur less than N times. Ignored n-grams are not counted and so do not affect counts and frequencies."
    u_remove: "Ignores n-grams that occur more than N times. Ignored n-grams are not counted and so do not affect counts and frequencies. Default value is 100,000,000."
    new_line: "Prevents n-grams from spanning across the new-line character."
    token_list: "Prints out all n-grams to the output file."
    histogram: "Outputs histogram to FILE. Tabulates how many times n-grams of a given frequency have occurred."
    recurse: "If SOURCE is a directory, uses all files in SOURCE as well as all subdirectories of SOURCE recursively as input."
    extended: "Outputs values of the above switches, if default values are not used."
    verbose: "Outputs to stderr information about current program status."
    destination: ""
    source: ""
  }
}