version 1.0

task HifiveHicData {
  input {
    String sS
    String rawRaw
    String matMat
    String matrixMatrix
    String insertInsert
    Boolean skipSkipDuplicateFiltering
    Boolean quietQuiet
    String? fendFend
    String? outputOutput
  }
  command <<<
    hifive hic-data \
      ~{fendFend} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(rawRaw) then ("--raw " +  '"' + rawRaw + '"') else ""} \
      ~{if defined(matMat) then ("--mat " +  '"' + matMat + '"') else ""} \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(insertInsert) then ("--insert " +  '"' + insertInsert + '"') else ""} \
      ~{true="--skip-duplicate-filtering" false="" skipSkipDuplicateFiltering} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{outputOutput}
  >>>
}