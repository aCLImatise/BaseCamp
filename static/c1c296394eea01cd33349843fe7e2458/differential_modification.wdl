version 1.0

task DifferentialModification {
  input {
    String bedBed
    Array[String]+ aAGroup
    Array[String]+ bBGroup
    String cutCutOff
    String outOut
  }
  command <<<
    differential_modification \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(aAGroup) then ("--Agroup " +  '"' + aAGroup + '"') else ""} \
      ~{if defined(bBGroup) then ("--Bgroup " +  '"' + bBGroup + '"') else ""} \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""}
  >>>
}