version 1.0

task WhatsGNUGetGenBankGenomes.py {
  input {
    Boolean faaFaa
    Boolean contigsContigs
    Boolean removeRemove
    String? listList
    String? outputOutputFolder
  }
  command <<<
    WhatsGNU_get_GenBank_genomes.py \
      ~{listList} \
      ~{true="--faa" false="" faaFaa} \
      ~{true="--contigs" false="" contigsContigs} \
      ~{true="--remove" false="" removeRemove} \
      ~{outputOutputFolder}
  >>>
}