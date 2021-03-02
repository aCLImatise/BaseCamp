version 1.0

task EnasearchGetFilterFields {
  input {
    String? result
  }
  command <<<
    enasearch get_filter_fields \
      ~{if defined(result) then ("--result " +  '"' + result + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    result: "Id of a result (accessible with get_results)  [required]"
  }
  output {
    File out_stdout = stdout()
  }
}