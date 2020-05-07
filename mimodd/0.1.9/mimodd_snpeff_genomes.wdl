version 1.0

task MimoddSnpeffGenomes {
  input {
    File configConfig
    String ofileOfile
    String? snpSnpEffGenomes
  }
  command <<<
    mimodd snpeff-genomes \
      ~{snpSnpEffGenomes} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(ofileOfile) then ("--ofile " +  '"' + ofileOfile + '"') else ""}
  >>>
}