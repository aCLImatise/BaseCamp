version 1.0

task SamtoolsSort {
  input {
    Boolean onOn
    Int mM
    String? inInBam
    String? outOutPrefix
  }
  command <<<
    samtools sort \
      ~{inInBam} \
      ~{true="-on" false="" onOn} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{outOutPrefix}
  >>>
}