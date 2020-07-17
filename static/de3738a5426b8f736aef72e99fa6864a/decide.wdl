version 1.0

task Decide.bak {
  input {
    Boolean? diploid
    Boolean? first_pass
    String? number_threads_default
    String histograms_prefix
  }
  command <<<
    decide.bak \
      ~{histograms_prefix} \
      ~{true="--diploid" false="" diploid} \
      ~{true="--first_pass" false="" first_pass} \
      ~{if defined(number_threads_default) then ("-t " +  '"' + number_threads_default + '"') else ""}
  >>>
  parameter_meta {
    diploid: "use the diploid model"
    first_pass: "do not display 'best k' at the end, inform user of rough estimation"
    number_threads_default: "number of threads (default: 1)"
    histograms_prefix: ""
  }
}