version 1.0

task BlRandomize {
  input {
    Boolean iI
    Boolean oO
    Boolean rR
    Boolean wW
    String? randomizeRandomize
  }
  command <<<
    bl-randomize \
      ~{randomizeRandomize} \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="-r" false="" rR} \
      ~{true="-w" false="" wW}
  >>>
}