version 1.0

task ClinvarTsvNormalizeTsv {
  input {
    String referenceReference
    String inputInputTsv
    String outputOutputTsv
  }
  command <<<
    clinvar_tsv normalize_tsv \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(inputInputTsv) then ("--input-tsv " +  '"' + inputInputTsv + '"') else ""} \
      ~{if defined(outputOutputTsv) then ("--output-tsv " +  '"' + outputOutputTsv + '"') else ""}
  >>>
}