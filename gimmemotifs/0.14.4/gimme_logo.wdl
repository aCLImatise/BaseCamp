version 1.0

task GimmeLogo {
  input {
    String pfmPfmFile
    String idsIds
    String kindKind
    Boolean noNoTitle
  }
  command <<<
    gimme logo \
      ~{if defined(pfmPfmFile) then ("--pfmfile " +  '"' + pfmPfmFile + '"') else ""} \
      ~{if defined(idsIds) then ("--ids " +  '"' + idsIds + '"') else ""} \
      ~{if defined(kindKind) then ("--kind " +  '"' + kindKind + '"') else ""} \
      ~{true="--notitle" false="" noNoTitle}
  >>>
}