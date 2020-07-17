version 1.0

task JeRetag {
  input {
    String act_gtac
  }
  command <<<
    je retag \
      ~{act_gtac}
  >>>
  parameter_meta {
    act_gtac: "ACTCTAC,TCTGTAC,ACTGTAG  "
  }
}