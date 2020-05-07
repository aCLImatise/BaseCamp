version 1.0

task GroupORFSequences.py {
  input {
    Boolean isIsPBid
    String? deDeDuplicate
    String? orfOrf
    String? faaFaa
    File? fileFile
    String? inputInputFaa
    String? outputOutputPrefix
  }
  command <<<
    group_ORF_sequences.py \
      ~{deDeDuplicate} \
      ~{true="--is_pbid" false="" isIsPBid} \
      ~{orfOrf} \
      ~{faaFaa} \
      ~{fileFile} \
      ~{inputInputFaa} \
      ~{outputOutputPrefix}
  >>>
}