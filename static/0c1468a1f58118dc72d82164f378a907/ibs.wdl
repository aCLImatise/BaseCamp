version 1.0

task Ibs {
  input {
    Boolean glfGlf
    Boolean seedSeed
  }
  command <<<
    ibs \
      ~{true="-glf" false="" glfGlf} \
      ~{true="-seed" false="" seedSeed}
  >>>
}