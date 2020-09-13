version 1.0

task Checkmgenomepostlinksh {
  input {
    Int? __httpsdataaceuqeduaupubliccheckmdatabasescheckmdatatargz
  }
  command <<<
    _checkm_genome_post_link_sh \
      ~{if defined(__httpsdataaceuqeduaupubliccheckmdatabasescheckmdatatargz) then ("--2020-09-09 " +  '"' + __httpsdataaceuqeduaupubliccheckmdatabasescheckmdatatargz + '"') else ""}
  >>>
  parameter_meta {
    __httpsdataaceuqeduaupubliccheckmdatabasescheckmdatatargz: ":37:47--  https://data.ace.uq.edu.au/public/CheckM_databases/checkm_data_2015_01_16.tar.gz"
  }
  output {
    File out_stdout = stdout()
  }
}