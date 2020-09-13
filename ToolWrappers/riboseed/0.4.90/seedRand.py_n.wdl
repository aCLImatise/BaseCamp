version 1.0

task SeedRandpyN {
  input {
    String see_dr_and_do_tpy
    String seed
    String n
  }
  command <<<
    seedRand_py n \
      ~{see_dr_and_do_tpy} \
      ~{seed} \
      ~{n}
  >>>
  parameter_meta {
    see_dr_and_do_tpy: ""
    seed: ""
    n: ""
  }
  output {
    File out_stdout = stdout()
  }
}