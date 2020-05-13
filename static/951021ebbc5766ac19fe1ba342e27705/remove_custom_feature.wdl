version 1.0

task RemoveCustomFeature.py {
  input {
    String organismOrganism
    String outputOutput
    String transcriptsTranscripts
  }
  command <<<
    remove_custom_feature.py \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(transcriptsTranscripts) then ("--transcripts " +  '"' + transcriptsTranscripts + '"') else ""}
  >>>
}