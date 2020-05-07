version 1.0

task RADpainterPaint {
  input {
    String ploidyPloidy
    Boolean chrChr
    Boolean runRunName
    Boolean missingMissing2
    String? optionsOptions
    String? inputInputTxt
  }
  command <<<
    RADpainter paint \
      ~{optionsOptions} \
      ~{if defined(ploidyPloidy) then ("--ploidy " +  '"' + ploidyPloidy + '"') else ""} \
      ~{true="--chr" false="" chrChr} \
      ~{true="--run-name" false="" runRunName} \
      ~{true="--missing2" false="" missingMissing2} \
      ~{inputInputTxt}
  >>>
}