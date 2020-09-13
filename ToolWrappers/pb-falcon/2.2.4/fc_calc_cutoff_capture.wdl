version 1.0

task FcCalcCutoffCapture {
  input {
    String? coverage
    String fc_calc_cut_off
    String genome_size
    String capture
  }
  command <<<
    fc_calc_cutoff capture \
      ~{fc_calc_cut_off} \
      ~{genome_size} \
      ~{capture} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""}
  >>>
  parameter_meta {
    coverage: ""
    fc_calc_cut_off: ""
    genome_size: ""
    capture: ""
  }
  output {
    File out_stdout = stdout()
  }
}