version 1.0

task ArbNtree {
  input {
    String executeExecute
    Directory? directoryDirectory
    File? fileFileMask
  }
  command <<<
    arb_ntree \
      ~{directoryDirectory} \
      ~{if defined(executeExecute) then ("--execute " +  '"' + executeExecute + '"') else ""} \
      ~{fileFileMask}
  >>>
}