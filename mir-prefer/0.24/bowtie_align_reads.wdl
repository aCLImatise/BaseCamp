version 1.0

task BowtieAlignReads.py {
  input {
    String referenceReference
    String indexIndex
    String tempTemp
    String allowedAllowedMismatch
    String multiMultiAlignment
    String processorProcessor
    Boolean filterFilterUnmapped
  }
  command <<<
    bowtie-align-reads.py \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{if defined(tempTemp) then ("--temp " +  '"' + tempTemp + '"') else ""} \
      ~{if defined(allowedAllowedMismatch) then ("--allowedmismatch " +  '"' + allowedAllowedMismatch + '"') else ""} \
      ~{if defined(multiMultiAlignment) then ("--multialignment " +  '"' + multiMultiAlignment + '"') else ""} \
      ~{if defined(processorProcessor) then ("--processor " +  '"' + processorProcessor + '"') else ""} \
      ~{true="--filterunmapped" false="" filterFilterUnmapped}
  >>>
}