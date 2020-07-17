version 1.0

task FilterGenesIn.pl {
  input {
    String name_file
    String dbfile
  }
  command <<<
    filterGenesIn.pl \
      ~{name_file} \
      ~{dbfile}
  >>>
  parameter_meta {
    name_file: ""
    dbfile: ""
  }
}