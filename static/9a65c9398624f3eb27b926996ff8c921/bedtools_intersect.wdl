version 1.0

task BedtoolsIntersect {
  input {
    Boolean waWa
    Boolean wbWb
    Boolean loLoJ
    Boolean woWo
    Boolean waoWao
    Boolean uU
    Boolean cC
    Boolean cC
    Boolean vV
    Boolean ubUbAm
    Boolean sS
    Boolean sS
    Boolean fF
    Boolean fF
    Boolean rR
    Boolean eE
    Boolean splitSplit
    Boolean gG
    Boolean noNoNameCheck
    String sortedSorted
    Boolean namesNames
    Boolean filenamesFilenames
    Boolean sortSortOut
    Boolean bedBed
    String headerHeader
    Boolean noNoBuf
    Boolean iIObuf
  }
  command <<<
    bedtools intersect \
      ~{true="-wa" false="" waWa} \
      ~{true="-wb" false="" wbWb} \
      ~{true="-loj" false="" loLoJ} \
      ~{true="-wo" false="" woWo} \
      ~{true="-wao" false="" waoWao} \
      ~{true="-u" false="" uU} \
      ~{true="-c" false="" cC} \
      ~{true="-C" false="" cC} \
      ~{true="-v" false="" vV} \
      ~{true="-ubam" false="" ubUbAm} \
      ~{true="-s" false="" sS} \
      ~{true="-S" false="" sS} \
      ~{true="-f" false="" fF} \
      ~{true="-F" false="" fF} \
      ~{true="-r" false="" rR} \
      ~{true="-e" false="" eE} \
      ~{true="-split" false="" splitSplit} \
      ~{true="-g" false="" gG} \
      ~{true="-nonamecheck" false="" noNoNameCheck} \
      ~{if defined(sortedSorted) then ("-sorted " +  '"' + sortedSorted + '"') else ""} \
      ~{true="-names" false="" namesNames} \
      ~{true="-filenames" false="" filenamesFilenames} \
      ~{true="-sortout" false="" sortSortOut} \
      ~{true="-bed" false="" bedBed} \
      ~{if defined(headerHeader) then ("-header " +  '"' + headerHeader + '"') else ""} \
      ~{true="-nobuf" false="" noNoBuf} \
      ~{true="-iobuf" false="" iIObuf}
  >>>
}