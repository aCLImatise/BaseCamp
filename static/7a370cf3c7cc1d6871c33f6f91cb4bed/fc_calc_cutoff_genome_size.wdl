version 1.0

task FcCalcCutoffGenomeSize {
  input {
    String? coverage
    String capture
  }
  command <<<
    fc_calc_cutoff genome_size \
      ~{capture} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""}
  >>>
  parameter_meta {
    coverage: ""
    capture: ""
  }
  output {
    File out_stdout = stdout()
  }
}