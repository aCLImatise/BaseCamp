version 1.0

task Freec {
  input {
    String? conf
  }
  command <<<
    freec \
      ~{if defined(conf) then ("-conf " +  '"' + conf + '"') else ""}
  >>>
  parameter_meta {
    conf: ""
  }
}