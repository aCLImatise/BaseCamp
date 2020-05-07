version 1.0

task PLEK.py {
  input {
    Int minlengthMinlength
    Boolean fastFastA
    Boolean outOut
    Boolean threadThread
    Boolean minlengthMinlength
    Boolean isIsOutMsg
    Boolean isIsRmTempfile
  }
  command <<<
    PLEK.py \
      ~{if defined(minlengthMinlength) then ("-minlength " +  '"' + minlengthMinlength + '"') else ""} \
      ~{true="-fasta" false="" fastFastA} \
      ~{true="-out" false="" outOut} \
      ~{true="-thread" false="" threadThread} \
      ~{true="-minlength" false="" minlengthMinlength} \
      ~{true="-isoutmsg" false="" isIsOutMsg} \
      ~{true="-isrmtempfile" false="" isIsRmTempfile}
  >>>
}