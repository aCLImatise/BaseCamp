version 1.0

task GetSequencesForMeme.pySummaryFile {
  input {
    String padPad
    String? summarySummaryFile
    String? ecEcDir
    String? outOutHead
  }
  command <<<
    get_sequences_for_meme.py summary_file \
      ~{summarySummaryFile} \
      ~{if defined(padPad) then ("--pad " +  '"' + padPad + '"') else ""} \
      ~{ecEcDir} \
      ~{outOutHead}
  >>>
}