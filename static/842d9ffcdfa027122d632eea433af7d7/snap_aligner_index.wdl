version 1.0

task SnapAlignerIndex {
  input {
    Boolean sS
    Boolean hg19Hg19
    Boolean ofOfActor
    Boolean tmaxTmaxThreads
    Boolean bB
    Boolean bBSpace
    Boolean ppPpAdding
    Boolean hHHistogramFile
    Boolean exactExact
    Boolean keyKeySize
    Boolean largeLarge
    Boolean locationLocationSize
    Boolean smSm
    String? inputInputFa
    String? outputOutputDir
  }
  command <<<
    snap-aligner index \
      ~{inputInputFa} \
      ~{true="-s" false="" sS} \
      ~{true="-hg19" false="" hg19Hg19} \
      ~{true="-Ofactor" false="" ofOfActor} \
      ~{true="-tMaxThreads" false="" tmaxTmaxThreads} \
      ~{true="-B" false="" bB} \
      ~{true="-bSpace" false="" bBSpace} \
      ~{true="-pPadding" false="" ppPpAdding} \
      ~{true="-HHistogramFile" false="" hHHistogramFile} \
      ~{true="-exact" false="" exactExact} \
      ~{true="-keysize" false="" keyKeySize} \
      ~{true="-large" false="" largeLarge} \
      ~{true="-locationSize" false="" locationLocationSize} \
      ~{true="-sm" false="" smSm} \
      ~{outputOutputDir}
  >>>
}