version 1.0

task RealignPolishes {
  input {
    Boolean qQ
  }
  command <<<
    realignPolishes \
      ~{true="-q" false="" qQ}
  >>>
}