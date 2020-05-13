version 1.0

task BedtoolsClosest {
  input {
    Boolean dD
    Boolean dD
    Boolean ioIo
    Boolean iuIu
    Boolean idId
    Boolean fuFu
    Boolean fdFd
    Boolean tT
    Boolean mdbMdb
    Boolean kK
    Boolean nN
    Boolean sS
    Boolean sS
    Boolean fF
    Boolean fF
    Boolean rR
    Boolean eE
    Boolean splitSplit
    Boolean gG
    Boolean noNoNameCheck
    Boolean namesNames
    Boolean filenamesFilenames
    Boolean sortSortOut
    Boolean bedBed
    String headerHeader
    Boolean noNoBuf
    Boolean iIObuf
  }
  command <<<
    bedtools closest \
      ~{true="-d" false="" dD} \
      ~{true="-D" false="" dD} \
      ~{true="-io" false="" ioIo} \
      ~{true="-iu" false="" iuIu} \
      ~{true="-id" false="" idId} \
      ~{true="-fu" false="" fuFu} \
      ~{true="-fd" false="" fdFd} \
      ~{true="-t" false="" tT} \
      ~{true="-mdb" false="" mdbMdb} \
      ~{true="-k" false="" kK} \
      ~{true="-N" false="" nN} \
      ~{true="-s" false="" sS} \
      ~{true="-S" false="" sS} \
      ~{true="-f" false="" fF} \
      ~{true="-F" false="" fF} \
      ~{true="-r" false="" rR} \
      ~{true="-e" false="" eE} \
      ~{true="-split" false="" splitSplit} \
      ~{true="-g" false="" gG} \
      ~{true="-nonamecheck" false="" noNoNameCheck} \
      ~{true="-names" false="" namesNames} \
      ~{true="-filenames" false="" filenamesFilenames} \
      ~{true="-sortout" false="" sortSortOut} \
      ~{true="-bed" false="" bedBed} \
      ~{if defined(headerHeader) then ("-header " +  '"' + headerHeader + '"') else ""} \
      ~{true="-nobuf" false="" noNoBuf} \
      ~{true="-iobuf" false="" iIObuf}
  >>>
}