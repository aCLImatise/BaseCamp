version 1.0

task VarfishAnnotatorAnnotate {
  input {
    Boolean caseCaseId
    Boolean contigContigRegex
    Boolean setSetId
  }
  command <<<
    varfish-annotator annotate \
      ~{true="--case-id" false="" caseCaseId} \
      ~{true="--contig-regex" false="" contigContigRegex} \
      ~{true="--set-id" false="" setSetId}
  >>>
}