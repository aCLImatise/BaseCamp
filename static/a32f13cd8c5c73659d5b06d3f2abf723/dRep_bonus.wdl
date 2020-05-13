version 1.0

task DRepBonus {
  input {
    String processorsProcessors
    Boolean debugDebug
    Boolean runRunTax
    String taxTaxMethod
    String percentPercent
    String centCentIndex
    Boolean checkCheckDependencies
    Boolean gG
    String? workWorkDirectory
  }
  command <<<
    dRep bonus \
      ~{workWorkDirectory} \
      ~{if defined(processorsProcessors) then ("--processors " +  '"' + processorsProcessors + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--run_tax" false="" runRunTax} \
      ~{if defined(taxTaxMethod) then ("--tax_method " +  '"' + taxTaxMethod + '"') else ""} \
      ~{if defined(percentPercent) then ("--percent " +  '"' + percentPercent + '"') else ""} \
      ~{if defined(centCentIndex) then ("--cent_index " +  '"' + centCentIndex + '"') else ""} \
      ~{true="--check_dependencies" false="" checkCheckDependencies} \
      ~{true="-g" false="" gG}
  >>>
}