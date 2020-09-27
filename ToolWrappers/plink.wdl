version 1.0

task Plink {
  input {
    Boolean? list_duplicate_vars
  }
  command <<<
    plink \
      ~{if (list_duplicate_vars) then "--list-duplicate-vars" else ""}
  >>>
  parameter_meta {
    list_duplicate_vars: ", and --score."
  }
  output {
    File out_stdout = stdout()
  }
}