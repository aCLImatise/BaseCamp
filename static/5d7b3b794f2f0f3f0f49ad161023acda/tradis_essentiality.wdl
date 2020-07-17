version 1.0

task TradisEssentiality.R {
  input {
    String data_dot_tab
  }
  command <<<
    tradis_essentiality.R \
      ~{data_dot_tab}
  >>>
  parameter_meta {
    data_dot_tab: ""
  }
}