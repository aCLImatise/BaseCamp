version 1.0

task MakeDbpyVdjScore {
  input {
    String make_db_do_tpy
  }
  command <<<
    MakeDb_py vdj_score \
      ~{make_db_do_tpy}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    make_db_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}