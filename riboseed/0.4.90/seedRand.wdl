version 1.0

task SeedRand.pyN {
  input {
    String? seedSeed
    String? nN
  }
  command <<<
    seedRand.py n \
      ~{seedSeed} \
      ~{nN}
  >>>
}