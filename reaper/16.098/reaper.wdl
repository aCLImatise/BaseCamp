version 1.0

task Reaper {
  input {
    String? lL
    String? eE
    String? gG
    String? oO
    String? rR
    String? iI
    String? qQ
    String? dD
  }
  command <<<
    reaper \
      ~{lL} \
      ~{rR} \
      ~{eE} \
      ~{iI} \
      ~{gG} \
      ~{qQ} \
      ~{oO} \
      ~{dD}
  >>>
}