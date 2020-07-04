version 1.0

task FilterGenesOutMRNAname.pl {
  input {
    String filter_genes
    String name_file
    String dbfile
  }
  command <<<
    filterGenesOut_mRNAname.pl \
      ~{filter_genes} \
      ~{name_file} \
      ~{dbfile}
  >>>
  parameter_meta {
    filter_genes: ""
    name_file: ""
    dbfile: ""
  }
}