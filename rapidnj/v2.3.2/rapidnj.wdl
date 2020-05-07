version 1.0

task Rapidnj {
  input {
    Boolean verboseVerbose
    String inputInputFormat
    String outputOutputFormat
    String evolutionEvolutionModel
    Boolean memoryMemorySize
    String rapidRapidNjMem
    String rapidRapidNjDisk
    String coresCores
    String bootstrapBootstrap
    String alignmentAlignmentType
    Boolean noNoNegativeLength
    String outputOutputFile
    String? inputInput
    String? optionsOptions
  }
  command <<<
    rapidnj \
      ~{inputInput} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(inputInputFormat) then ("--input-format " +  '"' + inputInputFormat + '"') else ""} \
      ~{if defined(outputOutputFormat) then ("--output-format " +  '"' + outputOutputFormat + '"') else ""} \
      ~{if defined(evolutionEvolutionModel) then ("--evolution-model " +  '"' + evolutionEvolutionModel + '"') else ""} \
      ~{true="--memory-size" false="" memoryMemorySize} \
      ~{if defined(rapidRapidNjMem) then ("--rapidnj-mem " +  '"' + rapidRapidNjMem + '"') else ""} \
      ~{if defined(rapidRapidNjDisk) then ("--rapidnj-disk " +  '"' + rapidRapidNjDisk + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{if defined(bootstrapBootstrap) then ("--bootstrap " +  '"' + bootstrapBootstrap + '"') else ""} \
      ~{if defined(alignmentAlignmentType) then ("--alignment-type " +  '"' + alignmentAlignmentType + '"') else ""} \
      ~{true="--no-negative-length" false="" noNoNegativeLength} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{optionsOptions}
  >>>
}