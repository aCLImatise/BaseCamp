version 1.0

task ChromosomerAssembleMap {
  input {
    Boolean saveSaveSoftMask
    String? mapMap
    String? fragmentFragmentFastA
    String? outputOutputFastA
  }
  command <<<
    chromosomer assemble map \
      ~{mapMap} \
      ~{true="--save_soft_mask" false="" saveSaveSoftMask} \
      ~{fragmentFragmentFastA} \
      ~{outputOutputFastA}
  >>>
}