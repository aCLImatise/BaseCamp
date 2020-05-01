version 1.0

task ParseGTF.pl {
  input {
    Boolean gffGff
    Boolean gff3Gff3
    Boolean gidGid
    Boolean tidTid
    Boolean removeRemoveAccVer
    Boolean removeRemoveEnsemblVer
    String featuresFeatures
    Boolean keepKeepAll
    Boolean annAnnTssStartOffset
    Boolean anAnNtsSendOffset
    Boolean annAnnTtsStartOffset
    Boolean anAnNttSendOffset
  }
  command <<<
    parseGTF.pl \
      ~{true="-gff" false="" gffGff} \
      ~{true="-gff3" false="" gff3Gff3} \
      ~{true="-gid" false="" gidGid} \
      ~{true="-tid" false="" tidTid} \
      ~{true="-removeAccVer" false="" removeRemoveAccVer} \
      ~{true="-removeEnsemblVer" false="" removeRemoveEnsemblVer} \
      ~{if defined(featuresFeatures) then ("-features " +  '"' + featuresFeatures + '"') else ""} \
      ~{true="-keepAll" false="" keepKeepAll} \
      ~{true="-annTSSstartOffset" false="" annAnnTssStartOffset} \
      ~{true="-annTSSendOffset" false="" anAnNtsSendOffset} \
      ~{true="-annTTSstartOffset" false="" annAnnTtsStartOffset} \
      ~{true="-annTTSendOffset" false="" anAnNttSendOffset}
  >>>
}