version 1.0

task Cstranslate {
  input {
    File inInFile
    File outfileOutfile
    File appendAppend
    String inInFormat
    String outOutFormat
    Boolean matchMatchAssign
    File alphabetAlphabet
    File contextContextData
    Boolean pcPcAdmix
    Boolean pcPcAli
    Boolean weightWeight
    Boolean ffFfIndex
  }
  command <<<
    cstranslate \
      ~{if defined(inInFile) then ("--infile " +  '"' + inInFile + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(appendAppend) then ("--append " +  '"' + appendAppend + '"') else ""} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{if defined(outOutFormat) then ("--outformat " +  '"' + outOutFormat + '"') else ""} \
      ~{true="--match-assign" false="" matchMatchAssign} \
      ~{if defined(alphabetAlphabet) then ("--alphabet " +  '"' + alphabetAlphabet + '"') else ""} \
      ~{if defined(contextContextData) then ("--context-data " +  '"' + contextContextData + '"') else ""} \
      ~{true="--pc-admix" false="" pcPcAdmix} \
      ~{true="--pc-ali" false="" pcPcAli} \
      ~{true="--weight" false="" weightWeight} \
      ~{true="--ffindex" false="" ffFfIndex}
  >>>
}