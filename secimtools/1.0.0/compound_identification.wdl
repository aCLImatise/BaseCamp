version 1.0

task CompoundIdentification.py {
  input {
    String anAnNo
    String uniqidUniqid
    String mzMzId
    String rtRtId
    String libraryLibrary
    String libLibUniqid
    String libmLibmZid
    String librLibrTid
    String outputOutput
  }
  command <<<
    compound_identification.py \
      ~{if defined(anAnNo) then ("--anno " +  '"' + anAnNo + '"') else ""} \
      ~{if defined(uniqidUniqid) then ("--uniqID " +  '"' + uniqidUniqid + '"') else ""} \
      ~{if defined(mzMzId) then ("--mzID " +  '"' + mzMzId + '"') else ""} \
      ~{if defined(rtRtId) then ("--rtID " +  '"' + rtRtId + '"') else ""} \
      ~{if defined(libraryLibrary) then ("--library " +  '"' + libraryLibrary + '"') else ""} \
      ~{if defined(libLibUniqid) then ("--libuniqID " +  '"' + libLibUniqid + '"') else ""} \
      ~{if defined(libmLibmZid) then ("--libmzID " +  '"' + libmLibmZid + '"') else ""} \
      ~{if defined(librLibrTid) then ("--librtID " +  '"' + librLibrTid + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}