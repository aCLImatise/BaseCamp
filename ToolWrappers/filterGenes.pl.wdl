version 1.0

task FilterGenespl {
  input {
    String name_file
    String dbfile
  }
  command <<<
    filterGenes_pl \
      ~{name_file} \
      ~{dbfile}
  >>>
  parameter_meta {
    name_file: ""
    dbfile: ""
  }
  output {
    File out_stdout = stdout()
  }
}