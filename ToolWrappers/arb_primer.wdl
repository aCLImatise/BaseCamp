version 1.0

task ArbPrimer {
  input {
    String? dbname
  }
  command <<<
    arb_primer \
      ~{dbname}
  >>>
  parameter_meta {
    dbname: ""
  }
  output {
    File out_stdout = stdout()
  }
}