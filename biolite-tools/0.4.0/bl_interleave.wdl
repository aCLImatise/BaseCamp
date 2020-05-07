version 1.0

task BlInterleave {
  input {
    Boolean iI
    Boolean oO
    Boolean sS
  }
  command <<<
    bl-interleave \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="-s" false="" sS}
  >>>
}