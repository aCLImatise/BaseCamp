version 1.0

task FilterWiggle.py {
  input {
    String inputInput
    String outputOutput
    Boolean quietQuiet
    String authorAuthor
  }
  command <<<
    filter-wiggle.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(authorAuthor) then ("--author " +  '"' + authorAuthor + '"') else ""}
  >>>
}