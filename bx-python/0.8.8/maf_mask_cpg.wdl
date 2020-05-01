version 1.0

task MafMaskCpg.py {
  input {
    String maskMask
    Boolean restrictedRestricted
    String? inputInput
    String? outputOutput
  }
  command <<<
    maf_mask_cpg.py \
      ~{inputInput} \
      ~{if defined(maskMask) then ("--mask " +  '"' + maskMask + '"') else ""} \
      ~{true="--restricted" false="" restrictedRestricted} \
      ~{outputOutput}
  >>>
}