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
  runtime {
    docker: "quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0"
  }
  parameter_meta {
    filter_genes: ""
    name_file: ""
    dbfile: ""
  }
  output {
    File out_stdout = stdout()
  }
}