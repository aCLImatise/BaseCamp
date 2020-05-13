version 1.0

task RunIsoncorrect {
  input {
    String fastFastQFolder
    String tT
    String kK
    String wW
    String xminXmin
    String xmaxXmax
    String tT
    String exactExactInstanceLimit
    Boolean keepKeepOld
    Boolean setSetWDynamically
    String splitSplitMod
    String residualResidual
    String outOutFolder
  }
  command <<<
    run_isoncorrect \
      ~{if defined(fastFastQFolder) then ("--fastq_folder " +  '"' + fastFastQFolder + '"') else ""} \
      ~{if defined(tT) then ("--t " +  '"' + tT + '"') else ""} \
      ~{if defined(kK) then ("--k " +  '"' + kK + '"') else ""} \
      ~{if defined(wW) then ("--w " +  '"' + wW + '"') else ""} \
      ~{if defined(xminXmin) then ("--xmin " +  '"' + xminXmin + '"') else ""} \
      ~{if defined(xmaxXmax) then ("--xmax " +  '"' + xmaxXmax + '"') else ""} \
      ~{if defined(tT) then ("--T " +  '"' + tT + '"') else ""} \
      ~{if defined(exactExactInstanceLimit) then ("--exact_instance_limit " +  '"' + exactExactInstanceLimit + '"') else ""} \
      ~{true="--keep_old" false="" keepKeepOld} \
      ~{true="--set_w_dynamically" false="" setSetWDynamically} \
      ~{if defined(splitSplitMod) then ("--split_mod " +  '"' + splitSplitMod + '"') else ""} \
      ~{if defined(residualResidual) then ("--residual " +  '"' + residualResidual + '"') else ""} \
      ~{if defined(outOutFolder) then ("--outfolder " +  '"' + outOutFolder + '"') else ""}
  >>>
}