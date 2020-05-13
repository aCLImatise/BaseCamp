version 1.0

task PslSelect {
  input {
    File qtQtStart
    String qQDelim
    String? inInPsl
    String? outOutPsl
  }
  command <<<
    pslSelect \
      ~{inInPsl} \
      ~{if defined(qtQtStart) then ("-qtStart " +  '"' + qtQtStart + '"') else ""} \
      ~{if defined(qQDelim) then ("-qDelim " +  '"' + qQDelim + '"') else ""} \
      ~{outOutPsl}
  >>>
}