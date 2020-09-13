version 1.0

task MakeDbpyDbfail {
  input {
    String make_db_do_tpy
  }
  command <<<
    MakeDb_py db_fail \
      ~{make_db_do_tpy}
  >>>
  parameter_meta {
    make_db_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}