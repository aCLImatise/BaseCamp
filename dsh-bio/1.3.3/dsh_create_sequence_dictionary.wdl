version 1.0

task DshCreateSequenceDictionary {
  input {
    Boolean aboutAbout
    Boolean inputInputFastAFile
    Boolean outputOutputSequenceDictionaryFile
  }
  command <<<
    dsh-create-sequence-dictionary \
      ~{true="--about" false="" aboutAbout} \
      ~{true="--input-fasta-file" false="" inputInputFastAFile} \
      ~{true="--output-sequence-dictionary-file" false="" outputOutputSequenceDictionaryFile}
  >>>
}