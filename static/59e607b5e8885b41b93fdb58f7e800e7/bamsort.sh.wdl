version 1.0

task Bamsortsh {
  input {
    String? not_exist
  }
  command <<<
    bamsort_sh \
      ~{if defined(not_exist) then ("-h " +  '"' + not_exist + '"') else ""}
  >>>
  parameter_meta {
    not_exist: "not exist."
  }
  output {
    File out_stdout = stdout()
  }
}