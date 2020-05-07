version 1.0

task RsemPlotTranscriptWiggles {
  input {
    Boolean geneGeneList
    Boolean transcriptTranscriptList
    Boolean showShowUnique
    Boolean pP
    String memoryMemoryPerThread
    String? sampleSampleName
    String? inputInputList
    String? outputOutputPlotFile
  }
  command <<<
    rsem-plot-transcript-wiggles \
      ~{sampleSampleName} \
      ~{true="--gene-list" false="" geneGeneList} \
      ~{true="--transcript-list" false="" transcriptTranscriptList} \
      ~{true="--show-unique" false="" showShowUnique} \
      ~{true="-p" false="" pP} \
      ~{if defined(memoryMemoryPerThread) then ("--memory-per-thread " +  '"' + memoryMemoryPerThread + '"') else ""} \
      ~{inputInputList} \
      ~{outputOutputPlotFile}
  >>>
}