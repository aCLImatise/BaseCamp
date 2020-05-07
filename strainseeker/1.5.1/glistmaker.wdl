version 1.0

task Glistmaker {
  input {
    String wordWordLength
    String cutCutOff
    String outputOutputName
    Boolean numNumThreads
    Boolean maxMaxTables
    Boolean tableTableSize
    Boolean dD
    String? inputInputFiles
    String? optionsOptions
  }
  command <<<
    glistmaker \
      ~{inputInputFiles} \
      ~{if defined(wordWordLength) then ("--wordlength " +  '"' + wordWordLength + '"') else ""} \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{if defined(outputOutputName) then ("--outputname " +  '"' + outputOutputName + '"') else ""} \
      ~{true="--num_threads" false="" numNumThreads} \
      ~{true="--max_tables" false="" maxMaxTables} \
      ~{true="--table_size" false="" tableTableSize} \
      ~{true="-D" false="" dD} \
      ~{optionsOptions}
  >>>
}