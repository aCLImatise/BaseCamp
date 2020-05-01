version 1.0

task GetSequencesForMeme.py {
  input {
    String pP
  }
  command <<<
    get_sequences_for_meme.py \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""}
  >>>
}