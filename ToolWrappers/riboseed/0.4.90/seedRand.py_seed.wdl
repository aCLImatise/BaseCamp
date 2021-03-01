version 1.0

task SeedRandpySeed {
  input {
    String n
  }
  command <<<
    seedRand_py seed \
      ~{n}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    n: ""
  }
  output {
    File out_stdout = stdout()
  }
}