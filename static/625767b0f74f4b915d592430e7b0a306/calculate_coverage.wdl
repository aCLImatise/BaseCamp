version 1.0

task CalculateCoverage.py {
  input {
    String fF
    String sS
    String pP
    String? inputInputFastX
  }
  command <<<
    calculate_coverage.py \
      ~{inputInputFastX} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""}
  >>>
}