version 1.0

task PslToBed {
  input {
    File? cds
    Boolean? pos_name
    String psl
  }
  command <<<
    pslToBed \
      ~{psl} \
      ~{if defined(cds) then ("-cds " +  '"' + cds + '"') else ""} \
      ~{if (pos_name) then "-posName" else ""}
  >>>
  parameter_meta {
    cds: ""
    pos_name: ""
    psl: ""
  }
  output {
    File out_stdout = stdout()
  }
}