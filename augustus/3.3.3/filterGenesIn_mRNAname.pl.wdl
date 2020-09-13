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
  parameter_meta {
    gtf_file: ""
    dbfile: ""
  }
  output {
    File out_stdout = stdout()
  }
}