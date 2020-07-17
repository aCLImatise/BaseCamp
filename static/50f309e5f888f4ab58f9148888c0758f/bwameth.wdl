version 1.0

task Bwameth.py {
  input {
    String var_map
    String bisulfite
    String var_2
    String reads
    String to
    String an
    String in_silico
    String var_7
    String genome
    String using
    String bwa
    String me_mdot
  }
  command <<<
    bwameth.py \
      ~{var_map} \
      ~{bisulfite} \
      ~{var_2} \
      ~{reads} \
      ~{to} \
      ~{an} \
      ~{in_silico} \
      ~{var_7} \
      ~{genome} \
      ~{using} \
      ~{bwa} \
      ~{me_mdot}
  >>>
  parameter_meta {
    var_map: ""
    bisulfite: ""
    var_2: ""
    reads: ""
    to: ""
    an: ""
    in_silico: ""
    var_7: ""
    genome: ""
    using: ""
    bwa: ""
    me_mdot: ""
  }
}