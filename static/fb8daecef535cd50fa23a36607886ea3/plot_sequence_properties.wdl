version 1.0

task PlotSequenceProperties.py {
  input {
    String fF
    String bB
    String rR
    Boolean jJ
    String? inputInputFastX
  }
  command <<<
    plot_sequence_properties.py \
      ~{inputInputFastX} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{true="-j" false="" jJ}
  >>>
}