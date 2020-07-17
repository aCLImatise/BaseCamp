version 1.0

task FilterGenes.pl {
  input {
    String name_file
    String dbfile
  }
  command <<<
    filterGenes.pl \
      ~{name_file} \
      ~{dbfile}
  >>>
  parameter_meta {
    name_file: ""
    dbfile: ""
  }
}