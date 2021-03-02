version 1.0

task Anvidbinfo {
  input {
    String? self_key
    String? self_value
    Boolean? just_do_it
  }
  command <<<
    anvi_db_info \
      ~{if defined(self_key) then ("--self-key " +  '"' + self_key + '"') else ""} \
      ~{if defined(self_value) then ("--self-value " +  '"' + self_value + '"') else ""} \
      ~{if (just_do_it) then "--just-do-it" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    self_key: "The key you wish to set or change."
    self_value: "The value you wish to set for the self key."
    just_do_it: "Don't bother me with questions or warnings, just do\\nit.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}