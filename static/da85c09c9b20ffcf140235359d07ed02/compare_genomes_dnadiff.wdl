version 1.0

task CompareGenomesDnadiff.py {
  input {
    String pP
    String rR
    String dD
    Boolean kK
    Boolean vV
    String? referenceReferenceFastA
    String? targetTargetFastA
  }
  command <<<
    compare_genomes_dnadiff.py \
      ~{referenceReferenceFastA} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{true="-k" false="" kK} \
      ~{true="-v" false="" vV} \
      ~{targetTargetFastA}
  >>>
}