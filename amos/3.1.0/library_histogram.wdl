version 1.0

task LibraryHistogram {
  input {
    String bank_path
  }
  command <<<
    library-histogram \
      ~{bank_path}
  >>>
  parameter_meta {
    bank_path: ""
  }
}