version 1.0

task BpBiofetchGenbankProxy.pl {
  input {
    String? optionOption
    String? descrDescr
    String? typeType
    String? usageUsage
    String? argArg
    String? optionOption
    String? descrDescr
    String? typeType
    String? usageUsage
    String? argArg
    String? optionOption
    String? descrDescr
    String? typeType
    String? usageUsage
    String? argArg
    String? optionOption
    String? descrDescr
    String? typeType
    String? usageUsage
    String? argArg
  }
  command <<<
    bp_biofetch_genbank_proxy.pl \
      ~{optionOption} \
      ~{optionOption} \
      ~{optionOption} \
      ~{optionOption} \
      ~{descrDescr} \
      ~{descrDescr} \
      ~{descrDescr} \
      ~{descrDescr} \
      ~{typeType} \
      ~{typeType} \
      ~{typeType} \
      ~{typeType} \
      ~{usageUsage} \
      ~{usageUsage} \
      ~{usageUsage} \
      ~{usageUsage} \
      ~{argArg} \
      ~{argArg} \
      ~{argArg} \
      ~{argArg}
  >>>
}