version 1.0

task CapClocation2fragment {
  input {
    Boolean rR
    Boolean oO
    Boolean iI
    Boolean lL
  }
  command <<<
    capClocation2fragment \
      ~{true="-r" false="" rR} \
      ~{true="-o" false="" oO} \
      ~{true="-i" false="" iI} \
      ~{true="-l" false="" lL}
  >>>
}