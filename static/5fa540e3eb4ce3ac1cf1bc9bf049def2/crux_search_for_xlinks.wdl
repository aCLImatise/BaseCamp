version 1.0

task CruxSearchForXlinks {
  input {
    String ms_two_file
  }
  command <<<
    crux search-for-xlinks \
      ~{ms_two_file}
  >>>
  parameter_meta {
    ms_two_file: ""
  }
}