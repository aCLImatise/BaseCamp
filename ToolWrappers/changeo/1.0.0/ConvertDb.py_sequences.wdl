version 1.0

task ConvertDbpySequences {
  input {
    String convert_db_do_tpy
  }
  command <<<
    ConvertDb_py sequences \
      ~{convert_db_do_tpy}
  >>>
  parameter_meta {
    convert_db_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}