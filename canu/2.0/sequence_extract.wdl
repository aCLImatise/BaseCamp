version 1.0

task SequenceExtract {
  input {
    Int lengthLength
  }
  command <<<
    sequence extract \
      ~{if defined(lengthLength) then ("-length " +  '"' + lengthLength + '"') else ""}
  >>>
}