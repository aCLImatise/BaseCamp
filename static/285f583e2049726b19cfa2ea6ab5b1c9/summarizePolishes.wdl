version 1.0

task SummarizePolishes {
  input {
    Boolean? excel
    String? p
  }
  command <<<
    summarizePolishes \
      ~{true="-excel" false="" excel} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""}
  >>>
  parameter_meta {
    excel: ""
    p: ""
  }
}