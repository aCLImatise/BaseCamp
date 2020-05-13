version 1.0

task Precheck.py {
  input {
    Int minMinReads
    Boolean validateValidate
    Boolean noNoCheckIds
  }
  command <<<
    precheck.py \
      ~{if defined(minMinReads) then ("--min-reads " +  '"' + minMinReads + '"') else ""} \
      ~{true="--validate" false="" validateValidate} \
      ~{true="--no-check-ids" false="" noNoCheckIds}
  >>>
}