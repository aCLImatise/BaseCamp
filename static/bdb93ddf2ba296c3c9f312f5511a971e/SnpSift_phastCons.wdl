version 1.0

task SnpSiftPhastCons {
  input {
    Boolean bedBed
    String extractExtract
    String minMinScore
    String? inputInputFile
  }
  command <<<
    SnpSift phastCons \
      ~{inputInputFile} \
      ~{true="-bed" false="" bedBed} \
      ~{if defined(extractExtract) then ("-extract " +  '"' + extractExtract + '"') else ""} \
      ~{if defined(minMinScore) then ("-minScore " +  '"' + minMinScore + '"') else ""}
  >>>
}