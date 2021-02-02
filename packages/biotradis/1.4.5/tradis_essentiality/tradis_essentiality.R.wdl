version 1.0

task TradisEssentialityR {
  input {
    String data_dot_tab
  }
  command <<<
    tradis_essentiality_R \
      ~{data_dot_tab}
  >>>
  parameter_meta {
    data_dot_tab: ""
  }
  output {
    File out_stdout = stdout()
  }
}