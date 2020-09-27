version 1.0

task SnpSiftRmInfo {
  input {
    String? jar
    String java
    String rm_info
    String info_field_n
  }
  command <<<
    SnpSift rmInfo \
      ~{java} \
      ~{rm_info} \
      ~{info_field_n} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    jar: ""
    java: ""
    rm_info: ""
    info_field_n: ""
  }
  output {
    File out_stdout = stdout()
  }
}