version 1.0

task Msdiff {
  input {
    Boolean? arg__set
    Boolean? ignore_metadata_compare
    Int filename_one
    Int filename_two
  }
  command <<<
    msdiff \
      ~{filename_one} \
      ~{filename_two} \
      ~{if (arg__set) then "-p" else ""} \
      ~{if (ignore_metadata_compare) then "-i" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/proteowizard:3.0.9992"
  }
  parameter_meta {
    arg__set: "[ --precision ] arg (=9.9999999999999995e-07)\\n: set floating point precision for\\ncomparing binary data"
    ignore_metadata_compare: "[ --ignore ]                       : ignore metadata (compare scan binary\\ndata and important scan metadata only)"
    filename_one: ""
    filename_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}