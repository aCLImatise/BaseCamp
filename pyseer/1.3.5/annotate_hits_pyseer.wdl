version 1.0

task AnnotateHitsPyseer {
  input {
    String bwaBwa
    String tmpTmpPrefix
    String? kmKmErs
    String? referencesReferences
    String? outputOutput
  }
  command <<<
    annotate_hits_pyseer \
      ~{kmKmErs} \
      ~{if defined(bwaBwa) then ("--bwa " +  '"' + bwaBwa + '"') else ""} \
      ~{if defined(tmpTmpPrefix) then ("--tmp-prefix " +  '"' + tmpTmpPrefix + '"') else ""} \
      ~{referencesReferences} \
      ~{outputOutput}
  >>>
}