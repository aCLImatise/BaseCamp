version 1.0

task AirrtoolsValidateRearrangement {
  input {
    Array[String] list_airr_rearrangement
  }
  command <<<
    airr_tools validate rearrangement \
      ~{if defined(list_airr_rearrangement) then ("-a " +  '"' + list_airr_rearrangement + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/airr:1.3.1--pyh3252c3a_0"
  }
  parameter_meta {
    list_airr_rearrangement: "A list of AIRR rearrangement files.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}