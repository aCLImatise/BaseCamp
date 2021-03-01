version 1.0

task Schemasaladdoc {
  input {
    String? redirect
    String? only
  }
  command <<<
    schema_salad_doc \
      ~{if defined(redirect) then ("--redirect " +  '"' + redirect + '"') else ""} \
      ~{if defined(only) then ("--only " +  '"' + only + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    redirect: ""
    only: ""
  }
  output {
    File out_stdout = stdout()
  }
}