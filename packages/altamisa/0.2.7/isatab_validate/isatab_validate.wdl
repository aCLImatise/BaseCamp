version 1.0

task IsatabValidate {
  input {
    File? input_investigation_file
    Boolean? show_duplicate_warnings
  }
  command <<<
    isatab_validate \
      ~{if defined(input_investigation_file) then ("--input-investigation-file " +  '"' + input_investigation_file + '"') else ""} \
      ~{if (show_duplicate_warnings) then "--show-duplicate-warnings" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/altamisa:0.2.7--py_0"
  }
  parameter_meta {
    input_investigation_file: "Path to input investigation file"
    show_duplicate_warnings: "Show duplicated warnings, i.e. with same message and\\nsame category (False by default)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}