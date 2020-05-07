version 1.0

task ProteinorthoClustering {
  input {
    Boolean verboseVerbose
    Float connConn
    Float purityPurity
    Int maxMaxNodes
    Float minMinSpecies
    String rmRmGraph
    Int seedSeed
    Float epsilonEpsilon
    Boolean lapackLapack
    Int ramRam
    Boolean weightedWeighted
    Int cpusCpus
    Int minMinOpenmp
    Boolean kKMere
    Boolean powPowLapd
    Boolean testTest
    Int maxMaxRunsConvergence
    String? optionsOptions
    String? graphGraphFiles
  }
  command <<<
    proteinortho_clustering \
      ~{optionsOptions} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{if defined(connConn) then ("-conn " +  '"' + connConn + '"') else ""} \
      ~{if defined(purityPurity) then ("-purity " +  '"' + purityPurity + '"') else ""} \
      ~{if defined(maxMaxNodes) then ("-maxnodes " +  '"' + maxMaxNodes + '"') else ""} \
      ~{if defined(minMinSpecies) then ("-minspecies " +  '"' + minMinSpecies + '"') else ""} \
      ~{if defined(rmRmGraph) then ("-rmgraph " +  '"' + rmRmGraph + '"') else ""} \
      ~{if defined(seedSeed) then ("-seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(epsilonEpsilon) then ("-epsilon " +  '"' + epsilonEpsilon + '"') else ""} \
      ~{if defined(lapackLapack) then ("-lapack " +  '"' + lapackLapack + '"') else ""} \
      ~{if defined(ramRam) then ("-ram " +  '"' + ramRam + '"') else ""} \
      ~{if defined(weightedWeighted) then ("-weighted " +  '"' + weightedWeighted + '"') else ""} \
      ~{if defined(cpusCpus) then ("-cpus " +  '"' + cpusCpus + '"') else ""} \
      ~{if defined(minMinOpenmp) then ("-minOpenmp " +  '"' + minMinOpenmp + '"') else ""} \
      ~{if defined(kKMere) then ("-kmere " +  '"' + kKMere + '"') else ""} \
      ~{true="-powLapD" false="" powPowLapd} \
      ~{true="-test" false="" testTest} \
      ~{if defined(maxMaxRunsConvergence) then ("-maxRunsConvergence " +  '"' + maxMaxRunsConvergence + '"') else ""} \
      ~{graphGraphFiles}
  >>>
}