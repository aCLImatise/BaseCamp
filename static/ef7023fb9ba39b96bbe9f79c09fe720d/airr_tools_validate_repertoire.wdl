version 1.0

task AirrtoolsValidateRepertoire {
  input {
    Array[String] list_airr_repertoire
  }
  command <<<
    airr_tools validate repertoire \
      ~{if defined(list_airr_repertoire) then ("-a " +  '"' + list_airr_repertoire + '"') else ""}
  >>>
  parameter_meta {
    list_airr_repertoire: "A list of AIRR repertoire metadata files.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}