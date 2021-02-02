version 1.0

task BuildSNPDBpl {
  input {
    Boolean? in_directory_name
    Boolean? reference_file
    Boolean? header_list
  }
  command <<<
    buildSNPDB_pl \
      ~{if (in_directory_name) then "-i" else ""} \
      ~{if (reference_file) then "-r" else ""} \
      ~{if (header_list) then "-l" else ""}
  >>>
  parameter_meta {
    in_directory_name: "in directory name"
    reference_file: "reference file"
    header_list: "header list"
  }
  output {
    File out_stdout = stdout()
  }
}