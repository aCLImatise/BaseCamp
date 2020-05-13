version 1.0

task Evaluator {
  input {
    File genomeGenomeGff
    Boolean modelModelGff
    Boolean genomeGenome
    Boolean rmRmOff
    Boolean retryRetry
    Boolean cpusCpus
    Boolean forceForce
    Boolean againAgain
    Boolean quietQuiet
    Boolean ctlCtl
    String? mpiMpiEvaluator
    String? evalEvalOpts
    String? evalEvalBOpts
    String? evalEvalExe
  }
  command <<<
    evaluator \
      ~{mpiMpiEvaluator} \
      ~{if defined(genomeGenomeGff) then ("-genome_gff " +  '"' + genomeGenomeGff + '"') else ""} \
      ~{true="-model_gff" false="" modelModelGff} \
      ~{true="-genome" false="" genomeGenome} \
      ~{true="-RM_off" false="" rmRmOff} \
      ~{true="-retry" false="" retryRetry} \
      ~{true="-cpus" false="" cpusCpus} \
      ~{true="-force" false="" forceForce} \
      ~{true="-again" false="" againAgain} \
      ~{true="-quiet" false="" quietQuiet} \
      ~{true="-CTL" false="" ctlCtl} \
      ~{evalEvalOpts} \
      ~{evalEvalBOpts} \
      ~{evalEvalExe}
  >>>
}