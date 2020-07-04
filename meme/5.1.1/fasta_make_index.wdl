version 1.0

task FastaMakeIndex {
  input {
    Boolean? f
    Boolean? sp
    Boolean? l
    Boolean? aa
    Boolean? gc
    Boolean? gi
    File file
  }
  command <<<
    fasta-make-index \
      ~{file} \
      ~{true="-f" false="" f} \
      ~{true="-sp" false="" sp} \
      ~{true="-l" false="" l} \
      ~{true="-aa" false="" aa} \
      ~{true="-gc" false="" gc} \
      ~{true="-gi" false="" gi}
  >>>
  parameter_meta {
    f: ""
    sp: ""
    l: ""
    aa: ""
    gc: ""
    gi: ""
    file: ""
  }
}