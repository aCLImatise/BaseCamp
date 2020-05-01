version 1.0

task RNAclust.pl {
  input {
    Boolean fastFastA
    Boolean dirDir
    Boolean cpuCpu
    Boolean dpDpOnly
    Boolean dpDpDir
    Boolean startStart
    Boolean endEnd
    Boolean treeTree
    Boolean maligMalig
    Boolean rnaRnaSoup
    Boolean rnaRnaSoupOnly
    Boolean addAddSequence
    Boolean locaLocaRnaOpts
    Boolean mloMloCarnaOpts
    Boolean manMan
    File localLocalBin
  }
  command <<<
    RNAclust.pl \
      ~{true="--fasta" false="" fastFastA} \
      ~{true="--dir" false="" dirDir} \
      ~{true="--cpu" false="" cpuCpu} \
      ~{true="--dponly" false="" dpDpOnly} \
      ~{true="--dpdir" false="" dpDpDir} \
      ~{true="--start" false="" startStart} \
      ~{true="--end" false="" endEnd} \
      ~{true="--tree" false="" treeTree} \
      ~{true="--malig" false="" maligMalig} \
      ~{true="--rnasoup" false="" rnaRnaSoup} \
      ~{true="--rnasoup-only" false="" rnaRnaSoupOnly} \
      ~{true="--addSequence" false="" addAddSequence} \
      ~{true="--locarna-opts" false="" locaLocaRnaOpts} \
      ~{true="--mlocarna-opts" false="" mloMloCarnaOpts} \
      ~{true="--man" false="" manMan} \
      ~{if defined(localLocalBin) then ("--localbin " +  '"' + localLocalBin + '"') else ""}
  >>>
}