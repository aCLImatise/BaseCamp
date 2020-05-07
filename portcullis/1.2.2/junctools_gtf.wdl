version 1.0

task JunctoolsGtf {
  input {
    Boolean ignoreIgnoreStrand
    String junctionsJunctions
    String transcriptsTranscripts
    String outputOutput
    String? modeMode
    String? inputInput
  }
  command <<<
    junctools gtf \
      ~{modeMode} \
      ~{true="--ignore_strand" false="" ignoreIgnoreStrand} \
      ~{if defined(junctionsJunctions) then ("--junctions " +  '"' + junctionsJunctions + '"') else ""} \
      ~{if defined(transcriptsTranscripts) then ("--transcripts " +  '"' + transcriptsTranscripts + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{inputInput}
  >>>
}