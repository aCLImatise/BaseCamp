version 1.0

task DeepbgcPrepare {
  input {
    String limitLimitToRecord
    Boolean prodigalProdigalMetaMode
    Boolean proteinProtein
    String outputOutputGbk
    String outputOutputTsv
    String? inputsInputs
  }
  command <<<
    deepbgc prepare \
      ~{inputsInputs} \
      ~{if defined(limitLimitToRecord) then ("--limit-to-record " +  '"' + limitLimitToRecord + '"') else ""} \
      ~{true="--prodigal-meta-mode" false="" prodigalProdigalMetaMode} \
      ~{true="--protein" false="" proteinProtein} \
      ~{if defined(outputOutputGbk) then ("--output-gbk " +  '"' + outputOutputGbk + '"') else ""} \
      ~{if defined(outputOutputTsv) then ("--output-tsv " +  '"' + outputOutputTsv + '"') else ""}
  >>>
}