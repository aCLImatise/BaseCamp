version 1.0

task CompareGenomesLastal.py {
  input {
    String pP
    String lL
    String tT
    Boolean fF
    String rR
    String? referenceReferenceFastA
    String? targetTargetFastA
  }
  command <<<
    compare_genomes_lastal.py \
      ~{referenceReferenceFastA} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{targetTargetFastA}
  >>>
}