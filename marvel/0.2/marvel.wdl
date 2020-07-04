version 1.0

task Marvel {
  input {
    String from
  }
  command <<<
    marvel \
      ~{from}
  >>>
  parameter_meta {
    from: "Bio import SeqIO"
  }
}