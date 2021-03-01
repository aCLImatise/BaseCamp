version 1.0

task AirrtoolsValidateRepertoire {
  input {
    Array[String] list_airr_repertoire
  }
  command <<<
    airr_tools validate repertoire \
      ~{if defined(list_airr_repertoire) then ("-a " +  '"' + list_airr_repertoire + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/airr:1.3.1--pyh3252c3a_0"
  }
  parameter_meta {
    list_airr_repertoire: "A list of AIRR repertoire metadata files.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}