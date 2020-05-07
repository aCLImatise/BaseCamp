version 1.0

task FilterPairs.py {
  input {
    String inputInput
    String outputOutputGood
    String outputOutputBad
    Boolean quietQuiet
    String authorAuthor
  }
  command <<<
    filter_pairs.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutputGood) then ("--output_good " +  '"' + outputOutputGood + '"') else ""} \
      ~{if defined(outputOutputBad) then ("--output_bad " +  '"' + outputOutputBad + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(authorAuthor) then ("--author " +  '"' + authorAuthor + '"') else ""}
  >>>
}