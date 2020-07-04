version 1.0

task Kcdirtest {
  input {
    String? th
    Boolean? rnd
    String order
  }
  command <<<
    kcdirtest \
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