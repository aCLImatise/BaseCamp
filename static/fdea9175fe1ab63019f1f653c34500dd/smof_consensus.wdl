version 1.0

task SmofConsensus {
  input {
    Boolean tableTable
    String? inputInput
  }
  command <<<
    smof consensus \
      ~{inputInput} \
      ~{true="--table" false="" tableTable}
  >>>
}