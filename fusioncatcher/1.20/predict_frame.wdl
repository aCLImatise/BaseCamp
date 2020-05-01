version 1.0

task PredictFrame.py {
  input {
    String gtfGtf
    String transcriptsTranscripts
    String inputInput
    String outputOutput
    Boolean compressCompressTranscripts
    Boolean quietQuiet
    String authorAuthor
  }
  command <<<
    predict_frame.py \
      ~{if defined(gtfGtf) then ("--gtf " +  '"' + gtfGtf + '"') else ""} \
      ~{if defined(transcriptsTranscripts) then ("--transcripts " +  '"' + transcriptsTranscripts + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--compress-transcripts" false="" compressCompressTranscripts} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(authorAuthor) then ("--author " +  '"' + authorAuthor + '"') else ""}
  >>>
}