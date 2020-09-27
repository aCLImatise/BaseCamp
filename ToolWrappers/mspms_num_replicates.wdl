version 1.0

task MspmsNumReplicates {
  input {
    Boolean? trees
    String? mutation_rate
    Boolean? v
    String ms_pms
  }
  command <<<
    mspms num_replicates \
      ~{ms_pms} \
      ~{if (trees) then "--trees" else ""} \
      ~{if defined(mutation_rate) then ("--mutation-rate " +  '"' + mutation_rate + '"') else ""} \
      ~{if (v) then "-V" else ""}
  >>>
  parameter_meta {
    trees: ""
    mutation_rate: ""
    v: ""
    ms_pms: ""
  }
  output {
    File out_stdout = stdout()
  }
}