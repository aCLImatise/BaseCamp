version 1.0

task BamtoolsIndex {
  input {
    String inIn
    Boolean btiBti
  }
  command <<<
    bamtools index \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{true="-bti" false="" btiBti}
  >>>
}