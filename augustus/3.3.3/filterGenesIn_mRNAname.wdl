version 1.0

task FilterGenesInMRNAname.pl {
  input {
    String gtf_file
    String dbfile
  }
  command <<<
    filterGenesIn_mRNAname.pl \
      ~{gtf_file} \
      ~{dbfile}
  >>>
  parameter_meta {
    gtf_file: ""
    dbfile: ""
  }
}