version 1.0

task EvalCGP.pl {
  input {
    String evalEvalExecDir
    Boolean joinJoinGenes
    Boolean wholeWholeGenome
    Boolean alternativesAlternatives
    Boolean noNoSelection
    Boolean noNoJoin
  }
  command <<<
    evalCGP.pl \
      ~{if defined(evalEvalExecDir) then ("--eval_exec_dir " +  '"' + evalEvalExecDir + '"') else ""} \
      ~{true="--joingenes" false="" joinJoinGenes} \
      ~{true="--wholeGenome" false="" wholeWholeGenome} \
      ~{true="--alternatives" false="" alternativesAlternatives} \
      ~{true="--noselection" false="" noNoSelection} \
      ~{true="--nojoin" false="" noNoJoin}
  >>>
}