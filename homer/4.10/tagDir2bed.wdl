version 1.0

task TagDir2bed.pl {
  input {
    Boolean lenLen
    Boolean separateSeparate
  }
  command <<<
    tagDir2bed.pl \
      ~{true="-len" false="" lenLen} \
      ~{true="-separate" false="" separateSeparate}
  >>>
}