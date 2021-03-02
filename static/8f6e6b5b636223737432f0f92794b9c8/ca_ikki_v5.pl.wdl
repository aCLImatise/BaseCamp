version 1.0

task CaIkkiV5pl {
  input {
    String this
    String as_mdot_spec
    String estimated_genome_size
  }
  command <<<
    ca_ikki_v5_pl \
      ~{this} \
      ~{as_mdot_spec} \
      ~{estimated_genome_size}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    this: ""
    as_mdot_spec: ""
    estimated_genome_size: ""
  }
  output {
    File out_stdout = stdout()
  }
}