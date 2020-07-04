version 1.0

task AC {
  input {
    File? reference_file_loaded
    String? option
  }
  command <<<
    AC \
      ~{option} \
      ~{if defined(reference_file_loaded) then ("-r " +  '"' + reference_file_loaded + '"') else ""}
  >>>
  parameter_meta {
    reference_file_loaded: "reference file (\"-rm\" are loaded here),     "
    option: ""
  }
}