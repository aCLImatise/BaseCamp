version 1.0

task Fastadigeststats.py {
  input {
    String? enzyme_pattern
    Int? min
    Int? max
    Boolean? parallel
    String? p
    Boolean? f
    Boolean? o
    String? fast_a
    String? out
  }
  command <<<
    fastadigeststats.py \
      ~{fast_a} \
      ~{out} \
      ~{if defined(enzyme_pattern) then ("--enzyme-pattern " +  '"' + enzyme_pattern + '"') else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{true="--parallel" false="" parallel} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{true="-f" false="" f} \
      ~{true="-o" false="" o}
  >>>
  parameter_meta {
    enzyme_pattern: "A regex cleavage pattern such as [KR]|{P} to cleave proteins with."
    min: "Minimum cleavage length"
    max: "Maximum cleavage length"
    parallel: "Should cleavages be done in parallel (default is serial digestion)?"
    p: ""
    f: ""
    o: ""
    fast_a: ""
    out: ""
  }
}