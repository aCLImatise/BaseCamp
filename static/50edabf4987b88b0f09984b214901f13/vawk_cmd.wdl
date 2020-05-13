version 1.0

task VawkCmd {
  input {
    String varVar
    String colCol
    Boolean headerHeader
    Boolean debugDebug
    String? cmdCmd
    String? vcfVcf
  }
  command <<<
    vawk cmd \
      ~{cmdCmd} \
      ~{if defined(varVar) then ("--var " +  '"' + varVar + '"') else ""} \
      ~{if defined(colCol) then ("--col " +  '"' + colCol + '"') else ""} \
      ~{true="--header" false="" headerHeader} \
      ~{true="--debug" false="" debugDebug} \
      ~{vcfVcf}
  >>>
}