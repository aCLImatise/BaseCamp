version 1.0

task BedGeneParts {
  input {
    String proProStart
    String proProEnd
    String? partPart
    String? inInBed
    String? outOutBed
  }
  command <<<
    bedGeneParts \
      ~{partPart} \
      ~{if defined(proProStart) then ("-proStart " +  '"' + proProStart + '"') else ""} \
      ~{if defined(proProEnd) then ("-proEnd " +  '"' + proProEnd + '"') else ""} \
      ~{inInBed} \
      ~{outOutBed}
  >>>
}