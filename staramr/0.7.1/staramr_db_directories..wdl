version 1.0

task StaramrDbDirectories {
  input {
    String star_amr
    String db
  }
  command <<<
    staramr db directories_ \
      ~{star_amr} \
      ~{db}
  >>>
  parameter_meta {
    star_amr: ""
    db: ""
  }
  output {
    File out_stdout = stdout()
  }
}