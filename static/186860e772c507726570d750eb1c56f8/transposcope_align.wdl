version 1.0

task TransposcopeAlign {
  input {
    String genesGenes
    String groupGroup1
    String groupGroup2
    Boolean keepKeepFiles
    String? indexIndex
    String? bamBam
    String? meMeReference
    String? hostHostReference
    String? sampleSampleId
  }
  command <<<
    transposcope align \
      ~{indexIndex} \
      ~{if defined(genesGenes) then ("--genes " +  '"' + genesGenes + '"') else ""} \
      ~{if defined(groupGroup1) then ("--group1 " +  '"' + groupGroup1 + '"') else ""} \
      ~{if defined(groupGroup2) then ("--group2 " +  '"' + groupGroup2 + '"') else ""} \
      ~{true="--keep_files" false="" keepKeepFiles} \
      ~{bamBam} \
      ~{meMeReference} \
      ~{hostHostReference} \
      ~{sampleSampleId}
  >>>
}