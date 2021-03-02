version 1.0

task PrepReads {
  input {
    String? filter_multi
  }
  command <<<
    prep_reads \
      ~{if defined(filter_multi) then ("--filter-multi " +  '"' + filter_multi + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    filter_multi: ""
  }
  output {
    File out_stdout = stdout()
  }
}