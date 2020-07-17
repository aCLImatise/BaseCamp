version 1.0

task Statistic.pl {
  input {
    String? n_gram
    File? set_freq_combo
    File? get_freq_combo
    String? frequency
    String? rank
    String? precision
    String? score
    Boolean? extended
    Boolean? format
    String statistic_library
    String destination
    String source
  }
  command <<<
    statistic.pl \
      ~{statistic_library} \
      ~{destination} \
      ~{source} \
      ~{if defined(n_gram) then ("--ngram " +  '"' + n_gram + '"') else ""} \
      ~{if defined(set_freq_combo) then ("--set_freq_combo " +  '"' + set_freq_combo + '"') else ""} \
      ~{if defined(get_freq_combo) then ("--get_freq_combo " +  '"' + get_freq_combo + '"') else ""} \
      ~{if defined(frequency) then ("--frequency " +  '"' + frequency + '"') else ""} \
      ~{if defined(rank) then ("--rank " +  '"' + rank + '"') else ""} \
      ~{if defined(precision) then ("--precision " +  '"' + precision + '"') else ""} \
      ~{if defined(score) then ("--score " +  '"' + score + '"') else ""} \
      ~{true="--extended" false="" extended} \
      ~{true="--format" false="" format}
  >>>
  parameter_meta {
    n_gram: "Assumes that n-grams in SOURCE file have N tokens each. N = 2 by default."
    set_freq_combo: "Uses the frequency combinations in FILE to decode the \"meaning\" of the frequency values in SOURCE. By default, the default frequency combinations output by count.pl for ngrams of size N are assumed."
    get_freq_combo: "Prints out the frequency combinations being used to FILE. If frequency combinations have been provided through --set_freq_combo switch above these are output; otherwise the default combinations being used are output."
    frequency: "Ignores all n-grams with frequency < N."
    rank: "Shows only n-grams with rank <= N."
    precision: "Displays values upto N places of decimal."
    score: "Shows only n-grams which have score >= N."
    extended: "Outputs chosen parameters in \"extended\" format, and retains any extended data in SOURCE. By default, suppresses any extended information in SOURCE, and outputs no new parameters."
    format: "Creates formatted output."
    statistic_library: ""
    destination: ""
    source: ""
  }
}