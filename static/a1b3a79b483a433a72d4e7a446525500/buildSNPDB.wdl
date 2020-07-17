version 1.0

task BuildSNPDB.pl {
  input {
    Boolean? in_directory_name
    Boolean? reference_file
    Boolean? header_list
  }
  command <<<
    buildSNPDB.pl \
      ~{true="-i" false="" in_directory_name} \
      ~{true="-r" false="" reference_file} \
      ~{true="-l" false="" header_list}
  >>>
  parameter_meta {
    in_directory_name: "in directory name"
    reference_file: "reference file"
    header_list: "header list"
  }
}