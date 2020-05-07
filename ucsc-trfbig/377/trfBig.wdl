version 1.0

task TrfBig {
  input {
    String bedBed
    File createCreate
    String tempdirTempdir
    String trfTrf
    String maxMaxPeriod
    Boolean keepKeep
    String lL
    String? inInFile
    String? outfileOutfile
  }
  command <<<
    trfBig \
      ~{inInFile} \
      ~{if defined(bedBed) then ("-bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(createCreate) then ("- create " +  '"' + createCreate + '"') else ""} \
      ~{if defined(tempdirTempdir) then ("-tempDir " +  '"' + tempdirTempdir + '"') else ""} \
      ~{if defined(trfTrf) then ("-trf " +  '"' + trfTrf + '"') else ""} \
      ~{if defined(maxMaxPeriod) then ("-maxPeriod " +  '"' + maxMaxPeriod + '"') else ""} \
      ~{true="-keep" false="" keepKeep} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{outfileOutfile}
  >>>
}