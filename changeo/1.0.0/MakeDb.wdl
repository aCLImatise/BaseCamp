version 1.0

task MakeDb.pyDbFail {
  input {
    String make_db_do_tpy
  }
  command <<<
    MakeDb.py db-fail \
      ~{make_db_do_tpy}
  >>>
  parameter_meta {
    make_db_do_tpy: ""
  }
}