version 1.0

task LabelRtcircrna.py {
  input {
    String inputInput
    String outputOutput
    Boolean quietQuiet
    String authorAuthor
  }
  command <<<
    label_rtcircrna.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(authorAuthor) then ("--author " +  '"' + authorAuthor + '"') else ""}
  >>>
}