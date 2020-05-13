version 1.0

task Analyse.py {
  input {
    String aAType
    String fFType
    String aAName
    String fnameFname
    String? annotationAnnotation
    String? referenceReference
  }
  command <<<
    analyse.py \
      ~{annotationAnnotation} \
      ~{if defined(aAType) then ("--atype " +  '"' + aAType + '"') else ""} \
      ~{if defined(fFType) then ("--ftype " +  '"' + fFType + '"') else ""} \
      ~{if defined(aAName) then ("--aname " +  '"' + aAName + '"') else ""} \
      ~{if defined(fnameFname) then ("--fname " +  '"' + fnameFname + '"') else ""} \
      ~{referenceReference}
  >>>
}