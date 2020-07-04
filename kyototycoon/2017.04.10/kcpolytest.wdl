version 1.0

task Kcpolytest {
  input {
    String? th
    Boolean? rnd
    String order
  }
  command <<<
    kcpolytest \
      ~{order} \
      ~{if defined(th) then ("-th " +  '"' + th + '"') else ""} \
      ~{true="-rnd" false="" rnd}
  >>>
  parameter_meta {
    th: ""
    rnd: ""
    order: ""
  }
}