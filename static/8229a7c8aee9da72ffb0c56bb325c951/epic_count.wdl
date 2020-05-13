version 1.0

task EpicCount {
  input {
    Array[String]+ inInFiles
    String numberNumberCores
    Boolean keepKeepDuplicates
    String windowWindowSize
    String fragmentFragmentSize
    String genomeGenome
    String chromChromSizes
    String outfileOutfile
  }
  command <<<
    epic-count \
      ~{if defined(inInFiles) then ("--infiles " +  '"' + inInFiles + '"') else ""} \
      ~{if defined(numberNumberCores) then ("--number-cores " +  '"' + numberNumberCores + '"') else ""} \
      ~{true="--keep-duplicates" false="" keepKeepDuplicates} \
      ~{if defined(windowWindowSize) then ("--window-size " +  '"' + windowWindowSize + '"') else ""} \
      ~{if defined(fragmentFragmentSize) then ("--fragment-size " +  '"' + fragmentFragmentSize + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(chromChromSizes) then ("--chromsizes " +  '"' + chromChromSizes + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""}
  >>>
}