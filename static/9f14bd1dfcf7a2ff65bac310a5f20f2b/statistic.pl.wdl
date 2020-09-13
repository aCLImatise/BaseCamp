version 1.0

task Statisticpl {
  input {
    File? n_gram
    File? set_freq_combo
    File? get_freq_combo
    String? frequency
    String? rank
    Float? precision
    String? score
    Boolean? extended
    Boolean? format
    String statistic_library
    String destination
    String source
  }
  command <<<
    statistic_pl \
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
      ~{if (extended) then "--extended" else ""} \
      ~{if (format) then "--format" else ""}
  >>>
  parameter_meta {
    n_gram: "Assumes that n-grams in SOURCE file have N\\ntokens each. N = 2 by default."
    set_freq_combo: "Uses the frequency combinations in FILE to\\ndecode the \\\"meaning\\\" of the frequency\\nvalues in SOURCE. By default, the default\\nfrequency combinations output by count.pl\\nfor ngrams of size N are assumed."
    get_freq_combo: "Prints out the frequency combinations being\\nused to FILE. If frequency combinations have\\nbeen provided through --set_freq_combo switch\\nabove these are output; otherwise the default\\ncombinations being used are output."
    frequency: "Ignores all n-grams with frequency < N."
    rank: "Shows only n-grams with rank <= N."
    precision: "Displays values upto N places of decimal."
    score: "Shows only n-grams which have score >= N."
    extended: "Outputs chosen parameters in \\\"extended\\\"\\nformat, and retains any extended data in\\nSOURCE. By default, suppresses any extended\\ninformation in SOURCE, and outputs no new\\nparameters."
    format: "Creates formatted output."
    statistic_library: ""
    destination: ""
    source: ""
  }
  output {
    File out_stdout = stdout()
    File out_get_freq_combo = "${in_get_freq_combo}"
  }
}