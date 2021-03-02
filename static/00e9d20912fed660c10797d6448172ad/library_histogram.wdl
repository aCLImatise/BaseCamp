version 1.0

task Libraryhistogram {
  input {
    Boolean? disregard_bank_locks
    Boolean? display_compatible_version
    Int? number_use_default
    File bank_path
  }
  command <<<
    library_histogram \
      ~{bank_path} \
      ~{if (disregard_bank_locks) then "-s" else ""} \
      ~{if (display_compatible_version) then "-v" else ""} \
      ~{if defined(number_use_default) then ("-f " +  '"' + number_use_default + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    disregard_bank_locks: "Disregard bank locks and write permissions (spy mode)"
    display_compatible_version: "Display the compatible bank version"
    number_use_default: "Number of characters of seqname to use as sublibrary (default=3)"
    bank_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}