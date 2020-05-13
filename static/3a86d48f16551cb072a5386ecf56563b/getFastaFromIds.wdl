version 1.0

task GetFastaFromIds.pyListOut {
  input {
    Boolean vV
    String? fastFastA
    String? outOut
  }
  command <<<
    getFastaFromIds.py list out \
      ~{fastFastA} \
      ~{true="-v" false="" vV} \
      ~{outOut}
  >>>
}