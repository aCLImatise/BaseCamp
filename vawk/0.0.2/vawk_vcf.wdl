version 1.0

task VawkVcf {
  input {
    String varVar
    String colCol
    Boolean headerHeader
    Boolean debugDebug
    String? cmdCmd
    String? vcfVcf
  }
  command <<<
    vawk vcf \
      ~{cmdCmd} \
      ~{if defined(varVar) then ("--var " +  '"' + varVar + '"') else ""} \
      ~{if defined(colCol) then ("--col " +  '"' + colCol + '"') else ""} \
      ~{true="--header" false="" headerHeader} \
      ~{true="--debug" false="" debugDebug} \
      ~{vcfVcf}
  >>>
}