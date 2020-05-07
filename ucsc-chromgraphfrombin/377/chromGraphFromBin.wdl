version 1.0

task ChromGraphFromBin {
  input {
    String restrictRestrict
    String? inInChromGraph
    String? outOutTab
  }
  command <<<
    chromGraphFromBin \
      ~{inInChromGraph} \
      ~{if defined(restrictRestrict) then ("- restrict " +  '"' + restrictRestrict + '"') else ""} \
      ~{outOutTab}
  >>>
}