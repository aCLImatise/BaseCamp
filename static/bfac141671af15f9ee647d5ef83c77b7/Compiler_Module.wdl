version 1.0

task CompilerModule.py {
  input {
    String outputOutputTag
    Boolean dedDedUp
    Boolean readReadNamesEntry
    String deDeFuzz
    Int maxMaxFuzz
    String microMicroInDelLength
    String compoundCompoundHandling
    String outputOutputDir
    Boolean bedBed
    String? inputInputData
  }
  command <<<
    Compiler_Module.py \
      ~{inputInputData} \
      ~{if defined(outputOutputTag) then ("--Output_Tag " +  '"' + outputOutputTag + '"') else ""} \
      ~{true="-DeDup" false="" dedDedUp} \
      ~{true="-ReadNamesEntry" false="" readReadNamesEntry} \
      ~{if defined(deDeFuzz) then ("--Defuzz " +  '"' + deDeFuzz + '"') else ""} \
      ~{if defined(maxMaxFuzz) then ("--MaxFuzz " +  '"' + maxMaxFuzz + '"') else ""} \
      ~{if defined(microMicroInDelLength) then ("--MicroInDel_Length " +  '"' + microMicroInDelLength + '"') else ""} \
      ~{if defined(compoundCompoundHandling) then ("--Compound_Handling " +  '"' + compoundCompoundHandling + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--Output_Dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{true="-BED" false="" bedBed}
  >>>
}