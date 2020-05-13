version 1.0

task VtoolsReportDiscordanceRate {
  input {
    Boolean sS
    String variantsVariants
    Boolean genotypesGenotypes
    Boolean vV
  }
  command <<<
    vtools_report discordance_rate \
      ~{true="-s" false="" sS} \
      ~{if defined(variantsVariants) then ("--variants " +  '"' + variantsVariants + '"') else ""} \
      ~{true="--genotypes" false="" genotypesGenotypes} \
      ~{true="-v" false="" vV}
  >>>
}