version 1.0

task FilterMapPreSplitting.py {
  input {
    String inputInput
    String outputOutput
    String extraExtra
    Boolean quietQuiet
    String authorAuthor
  }
  command <<<
    filter_map_pre-splitting.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(extraExtra) then ("--extra " +  '"' + extraExtra + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(authorAuthor) then ("--author " +  '"' + authorAuthor + '"') else ""}
  >>>
}