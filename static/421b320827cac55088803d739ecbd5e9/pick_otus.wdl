version 1.0

task PickOtus.py {
  input {
    String inputInputSeqsFilePath
  }
  command <<<
    pick_otus.py \
      ~{if defined(inputInputSeqsFilePath) then ("--input_seqs_filepath " +  '"' + inputInputSeqsFilePath + '"') else ""}
  >>>
}