version 1.0

task ScanwiseServer {
  input {
    Boolean useUseVanilla
    Boolean usethreadsUsethreads
    Boolean threadedThreadedDb
    Boolean orderedOrdered
    Boolean threadThreadNo
    Boolean dropDropOff
    Boolean arrayArrayNumb
    Boolean versionVersion
    Boolean silentSilent
    Boolean quietQuiet
    String errorErrorOffStd
    Boolean errorErrorLog
    Boolean errorErrorStyle
    String? optionsOptions
  }
  command <<<
    scanwise_server \
      ~{optionsOptions} \
      ~{true="-usevanilla" false="" useUseVanilla} \
      ~{true="-usethreads" false="" usethreadsUsethreads} \
      ~{true="-threadeddb" false="" threadedThreadedDb} \
      ~{true="-ordered" false="" orderedOrdered} \
      ~{true="-threadno" false="" threadThreadNo} \
      ~{true="-drop_off" false="" dropDropOff} \
      ~{true="-array_numb" false="" arrayArrayNumb} \
      ~{true="-version" false="" versionVersion} \
      ~{true="-silent" false="" silentSilent} \
      ~{true="-quiet" false="" quietQuiet} \
      ~{if defined(errorErrorOffStd) then ("-erroroffstd " +  '"' + errorErrorOffStd + '"') else ""} \
      ~{true="-errorlog" false="" errorErrorLog} \
      ~{true="-errorstyle" false="" errorErrorStyle}
  >>>
}