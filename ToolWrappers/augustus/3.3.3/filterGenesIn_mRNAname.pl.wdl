version 1.0

task FilterGenesInMRNAnamepl {
  input {
    String gtf_file
    String dbfile
  }
  command <<<
    filterGenesIn_mRNAname_pl \
      ~{gtf_file} \
      ~{dbfile}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gtf_file: ""
    dbfile: ""
  }
  output {
    File out_stdout = stdout()
  }
}