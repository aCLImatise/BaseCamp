version 1.0

task FaToFastq {
  input {
    String qualQual
    String? inInFa
    String? outOutFastQ
  }
  command <<<
    faToFastq \
      ~{inInFa} \
      ~{if defined(qualQual) then ("-qual " +  '"' + qualQual + '"') else ""} \
      ~{outOutFastQ}
  >>>
}