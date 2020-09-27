version 1.0

task MergepairsshFILECp {
  input {
    Boolean? write_to_stdout
    Boolean? force
    Boolean? test_file_integrity
    Boolean? cft
    String gunzip
    File? file
  }
  command <<<
    merge_pairs_sh FILE cp \
      ~{gunzip} \
      ~{file} \
      ~{if (write_to_stdout) then "-c" else ""} \
      ~{if (force) then "-f" else ""} \
      ~{if (test_file_integrity) then "-t" else ""} \
      ~{if (cft) then "-cft" else ""}
  >>>
  parameter_meta {
    write_to_stdout: "Write to stdout"
    force: "Force"
    test_file_integrity: "Test file integrity"
    cft: ""
    gunzip: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}