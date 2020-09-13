version 1.0

task RandomSplitpl {
  input {
    String dbfile
    Int size
  }
  command <<<
    randomSplit_pl \
      ~{dbfile} \
      ~{size}
  >>>
  parameter_meta {
    dbfile: ""
    size: ""
  }
  output {
    File out_stdout = stdout()
  }
}