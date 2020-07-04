version 1.0

task SrfIndexHash {
  input {
    Boolean? check_existing_index
    String srf_file
  }
  command <<<
    srf_index_hash \
      ~{srf_file} \
      ~{true="-c" false="" check_existing_index}
  >>>
  parameter_meta {
    check_existing_index: "check an existing index, don't re-index"
    srf_file: ""
  }
}