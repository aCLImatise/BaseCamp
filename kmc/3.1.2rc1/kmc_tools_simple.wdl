version 1.0

task KmcToolsSimple {
  input {
    Boolean? ci
    Boolean? cx
    Int intersect
    String union
    String km_ers_subtract
    String counters_subtract
    String reverse_km_ers_subtract
    String reverse_counters_subtract
  }
  command <<<
    kmc_tools simple \
      ~{intersect} \
      ~{union} \
      ~{km_ers_subtract} \
      ~{counters_subtract} \
      ~{reverse_km_ers_subtract} \
      ~{reverse_counters_subtract} \
      ~{true="-ci" false="" ci} \
      ~{true="-cx" false="" cx}
  >>>
  parameter_meta {
    ci: "<value>  - exclude k-mers occurring less than <value> times "
    cx: "<value>  - exclude k-mers occurring more of than <value> times"
    intersect: "- output database will contains only k-mers that are present in both input sets"
    union: "- output database will contains each k-mer present in any of input sets"
    km_ers_subtract: "- difference of input sets based on k-mers.  Output database will contains only k-mers that are present in first input set but absent in the second one"
    counters_subtract: "- difference of input sets based on k-mers and their counters (weaker version of kmers_subtract). Output database will contains all k-mers that are present in first input,  beyond those for which counter operation will lead to remove (i.e. counter equal to 0 or negative number)"
    reverse_km_ers_subtract: "- same as kmers_subtract but treat input2 as first and input1 as second"
    reverse_counters_subtract: "- same as counters_subtract but treat input2 as first and input1 as second"
  }
}