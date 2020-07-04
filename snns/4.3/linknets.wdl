version 1.0

task Linknets {
  input {
    Boolean? in_units
    String? in_connect
    Boolean? direct
    String? out_connect
  }
  command <<<
    linknets \
      ~{true="-inunits" false="" in_units} \
      ~{if defined(in_connect) then ("-inconnect " +  '"' + in_connect + '"') else ""} \
      ~{true="-direct" false="" direct} \
      ~{if defined(out_connect) then ("-outconnect " +  '"' + out_connect + '"') else ""}
  >>>
  parameter_meta {
    in_units: "use copies of input units"
    in_connect: "fully connect with <n> input units"
    direct: "connect input with output one-to-one"
    out_connect: "fully connect to <n> output units"
  }
}