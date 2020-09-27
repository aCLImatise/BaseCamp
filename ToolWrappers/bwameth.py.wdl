version 1.0

task Bwamethpy {
  input {
    String var_map
    String bisulfite
    String converted
    String reads
    String to
    String an
    String in_silico
    String genome
    String using
    String bwa
    String me_mdot
  }
  command <<<
    bwameth_py \
      ~{var_map} \
      ~{bisulfite} \
      ~{converted} \
      ~{reads} \
      ~{to} \
      ~{an} \
      ~{in_silico} \
      ~{genome} \
      ~{using} \
      ~{bwa} \
      ~{me_mdot}
  >>>
  parameter_meta {
    var_map: ""
    bisulfite: ""
    converted: ""
    reads: ""
    to: ""
    an: ""
    in_silico: ""
    genome: ""
    using: ""
    bwa: ""
    me_mdot: ""
  }
  output {
    File out_stdout = stdout()
  }
}