version 1.0

task CaIkkiV5.pl {
  input {
    String this
    String as_mdot_spec
    String estimated_genome_size
  }
  command <<<
    ca_ikki_v5.pl \
      ~{this} \
      ~{as_mdot_spec} \
      ~{estimated_genome_size}
  >>>
  parameter_meta {
    this: ""
    as_mdot_spec: ""
    estimated_genome_size: ""
  }
}