version 1.0

task AlleleSpecificModification {
  input {
    String bedBed
    String cutCutOff
    String outOut
    String? methylationMethylation
  }
  command <<<
    allele_specific_modification \
      ~{methylationMethylation} \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""}
  >>>
}