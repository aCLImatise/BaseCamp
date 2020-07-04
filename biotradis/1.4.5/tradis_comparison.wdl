version 1.0

task TradisComparison.R {
  input {
    Boolean? f
    String? t
    String? o
    String? p
    String? controls
    String? conditions
    String? cut_off
  }
  command <<<
    tradis_comparison.R \
      ~{cut_off} \
      ~{true="-f" false="" f} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(controls) then ("--controls " +  '"' + controls + '"') else ""} \
      ~{if defined(conditions) then ("--conditions " +  '"' + conditions + '"') else ""}
  >>>
  parameter_meta {
    f: ""
    t: ""
    o: ""
    p: ""
    controls: ""
    conditions: ""
    cut_off: ""
  }
}