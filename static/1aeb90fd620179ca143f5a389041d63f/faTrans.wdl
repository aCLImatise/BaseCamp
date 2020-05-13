version 1.0

task FaTrans {
  input {
    String stopStop
    String offsetOffset
    String cdsCdsUpper
    String? inInFa
    String? outOutFa
  }
  command <<<
    faTrans \
      ~{inInFa} \
      ~{if defined(stopStop) then ("-stop " +  '"' + stopStop + '"') else ""} \
      ~{if defined(offsetOffset) then ("-offset " +  '"' + offsetOffset + '"') else ""} \
      ~{if defined(cdsCdsUpper) then ("-cdsUpper " +  '"' + cdsCdsUpper + '"') else ""} \
      ~{outOutFa}
  >>>
}