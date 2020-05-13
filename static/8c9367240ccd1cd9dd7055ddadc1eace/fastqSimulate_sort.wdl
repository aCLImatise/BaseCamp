version 1.0

task FastqSimulateSort {
  input {
    String i1I1
    String i2I2
    String o1O1
    String o2O2
  }
  command <<<
    fastqSimulate-sort \
      ~{if defined(i1I1) then ("-i1 " +  '"' + i1I1 + '"') else ""} \
      ~{if defined(i2I2) then ("-i2 " +  '"' + i2I2 + '"') else ""} \
      ~{if defined(o1O1) then ("-o1 " +  '"' + o1O1 + '"') else ""} \
      ~{if defined(o2O2) then ("-o2 " +  '"' + o2O2 + '"') else ""}
  >>>
}