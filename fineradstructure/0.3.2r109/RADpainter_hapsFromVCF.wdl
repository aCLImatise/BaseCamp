version 1.0

task RADpainterHapsFromVCF {
  input {
    Boolean hH
    Int fF
    String? optionsOptions
    String? inputInputVcf
  }
  command <<<
    RADpainter hapsFromVCF \
      ~{optionsOptions} \
      ~{true="-H" false="" hH} \
      ~{if defined(fF) then ("-F " +  '"' + fF + '"') else ""} \
      ~{inputInputVcf}
  >>>
}