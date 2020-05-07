version 1.0

task ColorChrs.pl {
  input {
    File colorsColors
    String prefixPrefix
    String? optionsOptions
    String? outputOutputDat
  }
  command <<<
    color-chrs.pl \
      ~{optionsOptions} \
      ~{if defined(colorsColors) then ("--colors " +  '"' + colorsColors + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{outputOutputDat}
  >>>
}