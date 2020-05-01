version 1.0

task LabelExonexon.py {
  input {
    String gtfGtf
    String inputInput
    String outputOutput
    Boolean quietQuiet
    String authorAuthor
  }
  command <<<
    label_exonexon.py \
      ~{if defined(gtfGtf) then ("--gtf " +  '"' + gtfGtf + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(authorAuthor) then ("--author " +  '"' + authorAuthor + '"') else ""}
  >>>
}