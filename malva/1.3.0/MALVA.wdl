version 1.0

task MALVA {
  input {
    String kK
    String rR
    Int cC
    String? referenceReference
    String? variantsVariants
    String? sampleSample
  }
  command <<<
    MALVA \
      ~{referenceReference} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{variantsVariants} \
      ~{sampleSample}
  >>>
}