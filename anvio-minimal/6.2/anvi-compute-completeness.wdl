version 1.0

task AnviComputeCompleteness {
  input {
    File splitsSplitsOfInterest
    String contigsContigsDb
    String minMinEValue
    Boolean listListCompletenessSources
    String completenessCompletenessSource
  }
  command <<<
    anvi-compute-completeness \
      ~{if defined(splitsSplitsOfInterest) then ("--splits-of-interest " +  '"' + splitsSplitsOfInterest + '"') else ""} \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(minMinEValue) then ("--min-e-value " +  '"' + minMinEValue + '"') else ""} \
      ~{true="--list-completeness-sources" false="" listListCompletenessSources} \
      ~{if defined(completenessCompletenessSource) then ("--completeness-source " +  '"' + completenessCompletenessSource + '"') else ""}
  >>>
}