version 1.0

task Sigprofiler {
  input {
    String installInstallGenome
    String nameName
    String genomeGenome
    File filesFiles
    Boolean exoExoMe
    String bedBed
    Boolean chromChrom
    Boolean plotPlot
    Boolean tsbTsb
    Boolean gsGs
  }
  command <<<
    sigprofiler \
      ~{if defined(installInstallGenome) then ("--install_genome " +  '"' + installInstallGenome + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(filesFiles) then ("--files " +  '"' + filesFiles + '"') else ""} \
      ~{true="--exome" false="" exoExoMe} \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{true="--chrom" false="" chromChrom} \
      ~{true="--plot" false="" plotPlot} \
      ~{true="--tsb" false="" tsbTsb} \
      ~{true="--gs" false="" gsGs}
  >>>
}