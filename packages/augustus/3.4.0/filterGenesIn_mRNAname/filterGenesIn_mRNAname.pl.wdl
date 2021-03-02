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
    docker: "quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0"
  }
  parameter_meta {
    gtf_file: ""
    dbfile: ""
  }
  output {
    File out_stdout = stdout()
  }
}