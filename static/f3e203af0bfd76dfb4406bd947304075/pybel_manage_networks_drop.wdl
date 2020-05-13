version 1.0

task PybelManageNetworksDrop {
  input {
    Int networkNetworkId
    Boolean yesYes
  }
  command <<<
    pybel manage networks drop \
      ~{if defined(networkNetworkId) then ("--network-id " +  '"' + networkNetworkId + '"') else ""} \
      ~{true="--yes" false="" yesYes}
  >>>
}