version 1.0

task FilterGenesOutMRNAnamepl {
  input {
    String filter_genes
    String name_file
    String dbfile
  }
  command <<<
    filterGenesOut_mRNAname_pl \
      ~{filter_genes} \
      ~{name_file} \
      ~{dbfile}
  >>>
  parameter_meta {
    filter_genes: ""
    name_file: ""
    dbfile: ""
  }
  output {
    File out_stdout = stdout()
  }
}