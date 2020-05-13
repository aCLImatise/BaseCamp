version 1.0

task FaFrag {
  input {
    String preservePreserve
    String? inInFa
    String? startStart
    String? endEnd
    String? outOutFa
  }
  command <<<
    faFrag \
      ~{inInFa} \
      ~{if defined(preservePreserve) then ("- preserve " +  '"' + preservePreserve + '"') else ""} \
      ~{startStart} \
      ~{endEnd} \
      ~{outOutFa}
  >>>
}