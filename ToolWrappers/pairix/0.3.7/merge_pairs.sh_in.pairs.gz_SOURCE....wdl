version 1.0

task MergepairsshInpairsgzSOURCE {
  input {
    Boolean? write_to_stdout
    Boolean? force
    Boolean? test_file_integrity
    Boolean? cft
    String gunzip
    File? var_file
  }
  command <<<
    merge_pairs_sh in_pairs_gz SOURCE___ \
      ~{gunzip} \
      ~{var_file} \
      ~{if (write_to_stdout) then "-c" else ""} \
      ~{if (force) then "-f" else ""} \
      ~{if (test_file_integrity) then "-t" else ""} \
      ~{if (cft) then "-cft" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    write_to_stdout: "Write to stdout"
    force: "Force"
    test_file_integrity: "Test file integrity"
    cft: ""
    gunzip: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}