version 1.0

task Bwamempy {
  input {
    String align
    String a
    String? sequence
    String with
    String bwa
    String me_mdot
    String index
  }
  command <<<
    bwamempy \
      ~{align} \
      ~{a} \
      ~{sequence} \
      ~{with} \
      ~{bwa} \
      ~{me_mdot} \
      ~{index}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    align: ""
    a: ""
    sequence: ""
    with: ""
    bwa: ""
    me_mdot: ""
    index: ""
  }
  output {
    File out_stdout = stdout()
  }
}