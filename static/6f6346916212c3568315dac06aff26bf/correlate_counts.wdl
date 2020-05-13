version 1.0

task CorrelateCounts.py {
  input {
    String rR
    String cC
    Boolean lL
    Boolean oO
    String? inputInputCounts
  }
  command <<<
    correlate_counts.py \
      ~{inputInputCounts} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{true="-L" false="" lL} \
      ~{true="-o" false="" oO}
  >>>
}