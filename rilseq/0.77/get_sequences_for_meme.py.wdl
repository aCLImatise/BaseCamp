version 1.0

task GetSequencesForMemepy {
  input {
    Int? pad
  }
  command <<<
    get_sequences_for_meme_py \
      ~{if defined(pad) then ("--pad " +  '"' + pad + '"') else ""}
  >>>
  parameter_meta {
    pad: "Pad the sequences from both sides with this length.\\n(default: 20)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}