version 1.0

task AddErrorspy {
  input {
    Int? number_errors_introduce
    String? error_type_substitution
  }
  command <<<
    add_errors_py \
      ~{if defined(number_errors_introduce) then ("-n " +  '"' + number_errors_introduce + '"') else ""} \
      ~{if defined(error_type_substitution) then ("-t " +  '"' + error_type_substitution + '"') else ""}
  >>>
  parameter_meta {
    number_errors_introduce: "Number of errors to introduce (0)."
    error_type_substitution: "Error type: substitution, insertion or deletion."
  }
  output {
    File out_stdout = stdout()
  }
}