version 1.0

task ScfUpdate {
  input {
    String vV
    String? sourceSource
    String? destinationDestination
  }
  command <<<
    scf_update \
      ~{sourceSource} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{destinationDestination}
  >>>
}