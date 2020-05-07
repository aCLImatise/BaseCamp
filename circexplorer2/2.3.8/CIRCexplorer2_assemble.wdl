version 1.0

task CIRCexplorer2Assemble {
  input {
    String refRef
    String topTopHat
    String outputOutput
    String threadThread
    Boolean bbBb
    String chromChromSize
    Boolean removeRemoveRrna
    String maxMaxBundleFrags
  }
  command <<<
    CIRCexplorer2 assemble \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(topTopHat) then ("--tophat " +  '"' + topTopHat + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(threadThread) then ("--thread " +  '"' + threadThread + '"') else ""} \
      ~{true="--bb" false="" bbBb} \
      ~{if defined(chromChromSize) then ("--chrom-size " +  '"' + chromChromSize + '"') else ""} \
      ~{true="--remove-rRNA" false="" removeRemoveRrna} \
      ~{if defined(maxMaxBundleFrags) then ("--max-bundle-frags " +  '"' + maxMaxBundleFrags + '"') else ""}
  >>>
}