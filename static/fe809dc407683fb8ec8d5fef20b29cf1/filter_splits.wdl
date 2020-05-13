version 1.0

task FilterSplits.py {
  input {
    String inputInput
    String extraExtra
    String outputOutput
    String mapMap
    Boolean quietQuiet
    String authorAuthor
  }
  command <<<
    filter_splits.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(extraExtra) then ("--extra " +  '"' + extraExtra + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(mapMap) then ("--map " +  '"' + mapMap + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(authorAuthor) then ("--author " +  '"' + authorAuthor + '"') else ""}
  >>>
}