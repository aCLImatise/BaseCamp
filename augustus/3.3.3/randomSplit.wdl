version 1.0

task RandomSplit.pl {
  input {
    String dbfile
    Int size
  }
  command <<<
    randomSplit.pl \
      ~{dbfile} \
      ~{size}
  >>>
  parameter_meta {
    dbfile: ""
    size: ""
  }
}