version 1.0

task TradisEssentiality.R {
  input {
    String? dataDataTab
  }
  command <<<
    tradis_essentiality.R \
      ~{dataDataTab}
  >>>
}