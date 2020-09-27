version 1.0

task SvtoolsBedpesortBEDPEfile {
  input {
    Boolean? support
    String svtools
  }
  command <<<
    svtools bedpesort BEDPE_file \
      ~{svtools} \
      ~{if (support) then "--support" else ""}
  >>>
  parameter_meta {
    support: ""
    svtools: ""
  }
  output {
    File out_stdout = stdout()
  }
}