version 1.0

task LibTest.pl {
  input {
    Boolean genomeGenome
    Boolean stdStd
    Boolean tstTst
    Boolean catCat
    Boolean nN
    Boolean unknownUnknown
    Boolean randRand
    Boolean threadsThreads
  }
  command <<<
    lib-test.pl \
      ~{true="-genome" false="" genomeGenome} \
      ~{true="-std" false="" stdStd} \
      ~{true="-tst" false="" tstTst} \
      ~{true="-cat" false="" catCat} \
      ~{true="-N" false="" nN} \
      ~{true="-unknown" false="" unknownUnknown} \
      ~{true="-rand" false="" randRand} \
      ~{true="-threads" false="" threadsThreads}
  >>>
}