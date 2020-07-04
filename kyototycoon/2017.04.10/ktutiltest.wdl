version 1.0

task Ktutiltest {
  input {
    String? th
    String http
  }
  command <<<
    ktutiltest \
      ~{http} \
      ~{if defined(th) then ("-th " +  '"' + th + '"') else ""}
  >>>
  parameter_meta {
    th: ""
    http: ""
  }
}