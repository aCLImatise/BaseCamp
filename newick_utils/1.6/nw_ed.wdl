version 1.0

task NwEd {
  input {
    Boolean nN
    Boolean rR
    Boolean oO
    String? sS
    String? oO
    String? dD
    String? lL
  }
  command <<<
    nw_ed \
      ~{sS} \
      ~{true="-n" false="" nN} \
      ~{true="-r" false="" rR} \
      ~{true="-o" false="" oO} \
      ~{oO} \
      ~{dD} \
      ~{lL}
  >>>
}