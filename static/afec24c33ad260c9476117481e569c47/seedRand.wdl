version 1.0

task SeedRand.pyN {
  input {
    String see_dr_and_do_tpy
    String seed
    String n
  }
  command <<<
    seedRand.py n \
      ~{see_dr_and_do_tpy} \
      ~{seed} \
      ~{n}
  >>>
  parameter_meta {
    see_dr_and_do_tpy: ""
    seed: ""
    n: ""
  }
}