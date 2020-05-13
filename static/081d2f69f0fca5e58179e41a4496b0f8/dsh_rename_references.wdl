version 1.0

task DshRenameReferences {
  input {
    Boolean aboutAbout
    Boolean chrChr
    Boolean inputInputGff3File
    Boolean outputOutputGff3File
  }
  command <<<
    dsh-rename-references \
      ~{true="--about" false="" aboutAbout} \
      ~{true="--chr" false="" chrChr} \
      ~{true="--input-gff3-file" false="" inputInputGff3File} \
      ~{true="--output-gff3-file" false="" outputOutputGff3File}
  >>>
}